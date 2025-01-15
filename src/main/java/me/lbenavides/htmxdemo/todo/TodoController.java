package me.lbenavides.htmxdemo.todo;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;

import java.util.List;

@Controller
@RequestMapping("todos")
class TodoController {

    private final TodoService todoService;

    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }

    @GetMapping
    public String getTodoList(Model model,@RequestParam(value = "query", required = false ) String query,@RequestHeader(value = "HX-request",required = false) boolean hxRequest) {
        List<Todo> todos = query==null ? todoService.getAllTodos(): todoService.searchByTitle(query);
        model.addAttribute("todos", todos);
        if(hxRequest) {
            return "todo/list";
        }
        return "todo/index"; // Full page load (JTE templates)
    }

    @PostMapping
    public String createTodo(@RequestParam String title, Model model) {
        Todo todo = todoService.createTodo(title);
        model.addAttribute("todo", todo);
        return "todo/item";
    }

    @PutMapping("/{id}/toggle")
    public String toggleTodo(@PathVariable Long id, Model model) {
        Todo todo = todoService.updateTodo(id);
        model.addAttribute("todo", todo);
        return "todo/item"; // Partial update for a single todo
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteTodo(@PathVariable Long id) {
        todoService.deleteTodoById(id);
    }
}

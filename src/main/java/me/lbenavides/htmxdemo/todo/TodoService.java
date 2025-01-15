package me.lbenavides.htmxdemo.todo;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TodoService {
    private final TodoRepository todoRepository;

    public TodoService(TodoRepository todoRepository) {
        this.todoRepository = todoRepository;
    }

    public List<Todo> getAllTodos() {
        return (List<Todo>) todoRepository.findAll();
    }

    public Todo createTodo(String title) {
        Todo todo = new Todo();
        todo.setTitle(title);
        return todoRepository.save(todo);
    }

    public Todo updateTodo(Long id) {
        Todo todo = todoRepository.findById(id).orElseThrow(() -> new RuntimeException("Todo not found"));
        todo.toggle();
        return todoRepository.save(todo);
    }

    public void deleteTodoById(Long id) {
        todoRepository.deleteById(id);
    }

    public List<Todo> searchByTitle(String query) {
        return todoRepository.findAllByTitleContainingIgnoreCase(query);
    }
}

@import me.lbenavides.htmxdemo.todo.entity.Todo
@import java.util.List
@param List<Todo> todos

<ul>
    @for(Todo todo: todos)
        @template.todo.item(todo = todo)
    @endfor
</ul>
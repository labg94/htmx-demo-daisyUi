@import me.lbenavides.htmxdemo.todo.entity.Todo
@import java.util.List
@param List<Todo> todos

<ul class="list-none p-0 m-0 bg-base-200 rounded-box shadow-lg">
    @for(Todo todo: todos)
        @template.todo.item(todo = todo)
    @endfor
</ul>
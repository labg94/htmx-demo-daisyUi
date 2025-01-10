@import me.lbenavides.htmxdemo.todo.entity.Todo
@param Todo todo

<li id="todo-${todo.getId()}">
    <span class="${todo.isCompleted() ? "completed" : ""}">${todo.getTitle()}</span>
    <button hx-put="/todos/${todo.getId()}/toggle" hx-target="closest li">Toggle</button>
    <button hx-delete="/todos/${todo.getId()}" hx-target="closest li" hx-swap="outerHTML" hx:afterRequest="this.remove()" >Delete</button>
</li>
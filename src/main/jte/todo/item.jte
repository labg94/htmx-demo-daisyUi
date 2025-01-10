@import me.lbenavides.htmxdemo.todo.entity.Todo
@param Todo todo

<li id="todo-${todo.getId()}" class="flex items-center justify-between p-2 border-b border-gray-300 last:border-0">
    <div class="flex items-center gap-4">
        <input type="checkbox" class="checkbox checkbox-primary ${todo.isCompleted() ? "checked" : ""} " }
               hx-put="/todos/${todo.getId()}/toggle" hx-target="closest li" hx-swap="outerHTML"
               checked="${todo.isCompleted()}">
        <span class="text-sm ${todo.isCompleted() ? "line-through text-gray-500" : ""}">${todo.getTitle()}</span>
    </div>
    <div class="flex items-center gap-2">
        <button class="btn btn-outline btn-xs btn-error" hx-delete="/todos/${todo.getId()}"
                hx-target="closest li" hx-swap="outerHTML">
            Delete
        </button>
    </div>
</li>
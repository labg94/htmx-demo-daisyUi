@template.layout( title="Todo App", content = @`

    <input type="text" id="search-todos" name="query" placeholder="Search todos..."
           hx-get="/todos"
           hx-trigger="keyup changed delay:100ms"
           hx-target="#todo-list"
           hx-vals='{"query": this.value}'
           autocomplete="off">

    <div id="todo-list" hx-get="/todos" hx-trigger="load" >

    </div>

    <form hx-post="/todos" hx-target="#todo-list ul" hx-swap="beforeend">
        <label>
            <input type="text" name="title" placeholder="Add a new todo..." required>
        </label>
        <button type="submit">Add</button>
    </form>`)

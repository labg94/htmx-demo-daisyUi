@template.layout( title="Todo App", content = @`

    <label for="search-todos"></label>
    <input type="text" id="search-todos" name="query" placeholder="Search todos..."
           hx-get="/todos"
           hx-trigger="keyup changed delay:100ms"
           hx-target="#todo-list"
           hx-vals='{"query": this.value}'
           autocomplete="off">

    <div id="todo-list" hx-get="/todos" hx-trigger="load" >

    </div>

    <form hx-post="/todos" hx-target="#todo-list ul" hx-swap="beforeend" hx-trigger="submit keyup[key=='Enter']">
        <label for="title"></label>
        <input type="text" id="title" name="title" placeholder="Add a new todo..." required>
        <button type="submit">Add</button>
    </form>`)

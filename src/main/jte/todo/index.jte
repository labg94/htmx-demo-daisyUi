@template.layout( title="Todo App", content = @`

    <div class="form-control mb-4">
        <label for="search-todos" class="label">
            <span class="label-text">Search Todos</span>
        </label>
        <input type="text" id="search-todos" name="query" placeholder="Search todos..."
               class="input input-bordered w-full"
               hx-get="/todos"
               hx-trigger="keyup changed delay:100ms"
               hx-target="#todo-list"
               hx-vals='{"query": this.value}'
               autocomplete="off">
    </div>

    <!-- Todo List -->
    <div id="todo-list" class="mb-6 card bg-base-200 shadow-lg p-4" hx-get="/todos" hx-trigger="load">
        <!-- Todo items will load dynamically -->
    </div>

    <!-- Add Todo Form -->
    <form class="form-control" hx-post="/todos" hx-target="#todo-list ul" hx-swap="beforeend" hx-trigger="submit keyup[key=='Enter']">
        <label for="title" class="label">
            <span class="label-text">Add a New Todo</span>
        </label>
        <input type="text" id="title" name="title" placeholder="Add a new todo..."
               class="input input-bordered w-full" required>
        <button type="submit" class="btn btn-primary mt-4">Add</button>
    </form>`)

@import gg.jte.Content
@param String title
@param Content content

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${title}</title>
    <script src="https://unpkg.com/htmx.org@2.0.4"
            integrity="sha384-HGfztofotfshcF7+8n44JQL2oJmowVChPTg48S+jvZoztPfvwD79OC/LTtG6dMp+"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/main.css"
          integrity="sha384-8/9/2021, 11:15:00 AM" crossorigin="anonymous">
</head>
<body class="bg-base-100 text-base-content flex flex-col min-h-screen">
<header class="navbar bg-primary text-primary-content">
    <div class="container mx-auto">
        <h1 class="text-4xl font-bold">${title}</h1>
    </div>
</header>

<main class="container mx-auto p-6 flex-grow">
    <div class="card shadow-lg bg-base-200">
        <div class="card-body">
            ${content}
        </div>
    </div>
</main>

<footer class="footer items-center p-4 bg-neutral text-neutral-content">
    <div class="container mx-auto">
        <p>© 2024 | Powered by DaisyUI & HTMX</p>
    </div>
</footer>
</body>
</html>
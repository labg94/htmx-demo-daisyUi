@import gg.jte.Content
@param String title
@param  Content content


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
<body>
<header>
    <h1>${title}</h1>
</header>
<main>
    ${content}
</main>
</body>
</html>
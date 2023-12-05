[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Můj blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
    <h1> Seznam příspěvků </h1>
    [#list seznamPostu.content ]
    <table class="u-full-width">
        <thead>
        <tr>
            <th>Autor</th>
            <th>Titulek</th>
            <th>Náhled</th>
            <th>Publikováno</th>
        </tr>
        </thead>
        <tbody>
        [#items as post]
        <tr>
            <td>${post.author}</td>
            <td>${post.title}</td>
            <td>${post.perex}</td>
            <td>${post.published?date?string}</td>
            <td><a href="/${post.slug}" class="btn btn-primary">Přečíst</a></td>
        </tr>
        </tbody>
    </table>
        [/#items]
    [/#list]
</body>
</html>

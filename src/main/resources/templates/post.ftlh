[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Můj blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<main class="container">
    <h1> Seznam příspěvků </h1>
    [#list seznamPostu.content ]
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">Autor</th>
                <th scope="col">Titulek</th>
                <th scope="col">Náhled</th>
                <th scope="col">Publikováno</th>
            </tr>
            </thead>
            <tbody>
            [#items as post]
                <tr>
                    <td class="col-md-2">${post.author}</td>
                    <td class="col-md-2">${post.title}</td>
                    <td class="col-md-2">${post.perex?no_esc}</td>
                    <td class="col-md-2">${post.published?date?string.medium}</td>
                    <td class="col-md-2"><a href="/${post.slug}" class=" btn btn-outline-info">Přečíst</a></td>
                </tr>
            [/#items]
            </tbody>
        </table>
    [/#list]
</main>
</body>
</html>

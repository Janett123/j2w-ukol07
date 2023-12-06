[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Příspěvek</title>
</head>
<body>
[#list prispevek.content]
      [#items as post]
         <div class="ms-4">
          <h3>${post.title}</h3>

        <p>${post.perex?no_esc}</p>
        <p>${post.body?no_esc}</p>
         </div>
        [/#items]

[/#list]
<nav>
    <a href="/"class="btn btn-primary">◂ zpět na seznam</a>
</nav>

</body>
</html>

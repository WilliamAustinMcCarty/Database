<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Kevin Kowahl, William McCarthy, Justin Kier">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
  <header>
    <nav>
      <h2> Hello, <?=$_SESSION["gmail"]?>!</h2>
      <form action="index.php?command=logout" method="post" >
        <input type="submit" value="Logout"/>
    </form>
    <form action="index.php?command=pokeList" method="post">
        <input type="submit" value="See Pokémon List!"/>
    </form>
    <form action="index.php?command=userPage" method="post">
        <input type="submit" value="User Page"/>
    </form>
    </nav>
  </header>
</body>
</html>
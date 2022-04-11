<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Kevin Kowahl, William McCarthy, Justin Kier">
    <meta name="description" content="Login page">  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Welcome to Pokévote!</title>
    
    <!-- Icon in tab -->
    <link rel="icon" type="image/png" href="http://www.cs.virginia.edu/~up3f/cs4750/images/db-icon.png" />
    
    <!-- include your CSS -->
    <!-- <link rel="stylesheet" href="custom.css" />  -->
  </head>
  <body>
    <?php
    if($errormsg == "Wrong Password"){
      ?>
      <div class="alert alert-danger" role="alert"> Wrong Password </div>
      <?php
      }
      ?>

    <div class="container">
      <h1>Welcome! Log In</h1>
      <form action="?command=login" method="post"> <!--?command=login, since there is no URI before the ?, it defaults to index.php (action="index.php?command=login). method="post" will put the information in the $_POST[name] array.-->
        <label for="gmail"> Username: </label><br>
        <input type="text" name="gmail" placeholder="Username"/><br><br>
        <label for="passwd"> Password: </label><br>
        <input type="passwd" name="passwd" placeholder="Password"/><br><br>
        <input type="Submit" value="Submit"/>
      </form>
    </div>

    <!-- <a href="file:///C:/xampp/htdocs/CS4507-workin/poke.php">Click to open the next page</a> -->
    <!-- CDN for JS bootstrap -->
    <!-- you may also use JS bootstrap to make the page dynamic -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
    <!-- for local -->
    <!-- <script src="your-js-file.js"></script> -->  
  </body>
</html>
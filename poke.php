<?php
if(!isset($_SESSION)) 
{ 
    session_start(); 
}
require('connect-db.php');
require('pokemon_db.php');


$list_of_pokemon = $_SESSION["pokemon"];
$friend_to_update = null;

$gmail_to_add = 'testuser@gmail.com';
$pokemon_to_add = null;
$variance_to_add = null;

$gmail_to_delete = null;
$pokemon_to_delete = null;
$variance_to_delete = null;

$asc = $_SESSION["asc"];

?>


<!-- 1. create HTML5 doctype -->
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">

  <!-- 2. include meta tag to ensure proper rendering and touch zooming -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--
  Bootstrap is designed to be responsive to mobile.
  Mobile-first styles are part of the core framework.

  width=device-width sets the width of the page to follow the screen-width
  initial-scale=1 sets the initial zoom level when the page is first loaded
  -->

  <meta name="author" content="your name">
  <meta name="description" content="include some description about your page">

  <title> Pokemon List </title>

  <!-- 3. link bootstrap -->
  <!-- if you choose to use CDN for CSS bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

  <!-- you may also use W3s formats -->
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

  <!--
  Use a link tag to link an external resource.
  A rel (relationship) specifies relationship between the current document and the linked resource.
  -->

  <!-- If you choose to use a favicon, specify the destination of the resource in href -->
  <link rel="icon" type="image/png" href="http://www.cs.virginia.edu/~up3f/cs4750/images/db-icon.png" />

  <!-- if you choose to download bootstrap and host it locally -->
  <!-- <link rel="stylesheet" href="path-to-your-file/bootstrap.min.css" /> -->

  <!-- include your CSS -->
  <!-- <link rel="stylesheet" href="custom.css" />  -->


</head>

<body>
<div class="container">
<h1>Pokemon</h1>
<!-- <div class="row justify-content-center">   -->
<form action="?command=pokeList" method="post">
  <div style="overflow-y: scroll; height: 500px;">
  <table id "myTable" class="w3-table w3-bordered w3-card-4 " style="width:90%;">
    <thead>
    <tr style="background-color:#B0B0B0">
      </form>
      <?php
      if($_SESSION["last"] == "natl_dex") $asc = $_SESSION["asc"];
      else $asc = "ASC";
      ?>
      <th width='5%'><input type='Submit' name='orderBy' value='natl_dex'/></th>
      <?php echo "<input type='hidden' name='direction' value= '".$asc."'/>" ?>
      </form>


      <?php
      if($_SESSION["last"] == "variance") $asc = $_SESSION["asc"];
      else $asc = "ASC";
      ?>
      <form action="?command=pokeList" method="post">
      <th width='10%'><input type='Submit' name='orderBy' value='variance'/></th>
      <?php echo "<input type='hidden' name='direction' value= '".$asc."'/>" ?>
      </form>


      <?php
      if($_SESSION["last"] == "name") $asc = $_SESSION["asc"];
      else $asc = "ASC";
      ?>
      <form action="?command=pokeList" method="post">
      <th width='20%'><input type='Submit' name='orderBy' value='name'/></th>
      <?php echo "<input type='hidden' name='direction' value= '".$asc."'/>" ?>
      </form>


      <?php
      if($_SESSION["last"] == "generation") $asc = $_SESSION["asc"];
      else $asc = "ASC";
      ?>
      <form action="?command=pokeList" method="post">
      <th width='5%'><input type='Submit' name='orderBy' value='generation'/></th>
      <?php echo "<input type='hidden' name='direction' value= '".$asc."'/>" ?>
      </form>
	
	
      <form action="?command=pokeList" method="post">
      <th width="25%">image</th>
      <th width="25%">type 1</th>
      <th width="25%">type 2</th>	    
    </tr>
    </thead>



  <?php foreach ($list_of_pokemon as $pokemon): ?>
  <tr class ="item">
    <td><?php echo $pokemon['natl_dex']; ?></td>
    <td><?php echo $pokemon['variance']; ?></td>
    <td><?php echo $pokemon['name']; ?></td>
    <td><?php echo $pokemon['generation']; ?></td>
    <td><?php echo "<img src='".$pokemon['image']."' height='30' >"; ?></td>
    </form>

    <?php
 	global $db;
	$query = 'select * from has where natl_dex=:natl_dex AND variance=:variance';
	$statement = $db->prepare($query);
	$statement->bindValue(':natl_dex', $pokemon['natl_dex']);
    	$statement->bindValue(':variance', $pokemon['variance']);
	$statement->execute();
	$results = $statement->fetchAll();
	$statement->closeCursor(); 
    ?>
    <?php foreach ($results as $has): ?>
    <td><?php echo $has['type']; ?></td>
    <?php endforeach; ?>
    <form action="?command=pokeList" method="post">
  </tr>
  <?php endforeach; ?>
    </div>
  </table>
  </form>

</div>
</body>
</html>






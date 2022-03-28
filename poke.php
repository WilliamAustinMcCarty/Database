<?php
require('connect-db.php');
require('pokemon_db.php');

#$orderByA = array('natl_dex', 'variance', 'name', 'generaton', 'hp', 'atk', 'spAtk', 'speed', 'def', 'spDef');

#if(isset($_GET["orderBy"]) && in_array($_GET["orderBy"], $orderByA){
#	$order = $_GET["orderBy"];
#	$list_of_pokemon = orderBy($order);
#}
#else {
	$list_of_pokemon = getAllPokemon();
#}

$friend_to_update = null;

$gmail_to_add = 'testuser@gmail.com';
$pokemon_to_add = null;
$variance_to_add = null;

$gmail_to_delete = null;
$pokemon_to_delete = null;
$variance_to_delete = null;

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

  <title>DB interfacing example</title>

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
<table id "myTable" class="w3-table w3-bordered w3-card-4" style="width:90%">
  <thead>
  <tr style="background-color:#B0B0B0">
    <th width="5%"><a href="?orderBy=natl_dex">natl_dex</a>
    </th>
    <th width="10%"><a href="?orderBy=variance">variance</a>
    </th>
    <th width="20%"><a href="?orderBy=name">name</a>
    </th>
    <th width="5%"><a href="?orderBy=generation">generation</a>
    </th>
    <th width="25%">image</th>
    <th width="8%"><a href="?orderBy=hp">hp</a>
    </th>
    <th width="8%"><a href="?orderBy=atk">atk</a>
    </th>
    <th width="8%"><a href="?orderBy=spAtk">spAtk</a>
    </th>
    <th width="8%"><a href="?orderBy=speed">speed</a>
    </th>
    <th width="8%"><a href="?orderBy=def">def</a>
    </th>
    <th width="8%"><a href="?orderBy=spDef">spDef</a>
    </th>
  </tr>
  </thead>


  <?php foreach ($list_of_pokemon as $pokemon): ?>
  <tr class ="item">
    <td><?php echo $pokemon['natl_dex']; ?></td>
    <td><?php echo $pokemon['variance']; ?></td>
    <td><?php echo $pokemon['name']; ?></td>
    <td><?php echo $pokemon['generation']; ?></td>
    <td><?php echo "<img src='".$pokemon['image']."' height='30' >"; ?></td>
    <td><?php echo $pokemon['hp']; ?></td>
    <td><?php echo $pokemon['atk']; ?></td>
    <td><?php echo $pokemon['spAtk']; ?></td>
    <td><?php echo $pokemon['speed']; ?></td>
    <td><?php echo $pokemon['def']; ?></td>
    <td><?php echo $pokemon['spDef']; ?></td>

  </tr>
  <?php endforeach; ?>

  </table>

</div>
</body>
</html>






<?php
// if(!isset($_SESSION)) 
// { 
//     session_start(); 
// }
// var_dump($_SESSION);
include("header.php");
require('connect-db.php');
require('pokemon_db.php');


$gmail_to_add = $_SESSION["gmail"];

$list_of_pokemon = getAllPokemon();
$team = getTeam($gmail_to_add);
$friend_to_update = null;

$pokemon_to_add = null;
$variance_to_add = null;

$pokemon_to_vote = null;
$variance_to_vote = null;

$gmail_to_delete = null;
$pokemon_to_delete = null;
$variance_to_delete = null;

if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    if (!empty($_POST['btnAction']) && $_POST['btnAction'] == "AddTeam")
    {
      if(count($team)>=6){
        //echo"failed to add $gmail_to_add, $_POST[pokemon_to_add], $_POST[variance_to_add]";
      }
      else{
        //echo"rightfully attempting to add $gmail_to_add, $_POST[pokemon_to_add], $_POST[variance_to_add]";
        addTeam($gmail_to_add, $_POST['pokemon_to_add'], $_POST['variance_to_add']);
        $list_of_pokemon = getAllPokemon();
        $team = getTeam($gmail_to_add);
      }
    }
    else if (!empty($_POST['btnAction']) && $_POST['btnAction'] == "Delete Member")
    {
        //echo"trying to delete from $gmail_to_delete, $pokemon_to_delete, $variance_to_delete \n";
        //echo"$pokemon_to_delete";
        deleteTeam($_POST['gmail_to_delete'], $_POST['pokemon_to_delete'], $_POST['variance_to_delete']);
        $list_of_pokemon = getAllPokemon();
        $team = getTeam($gmail_to_add);
    }
    else if (!empty($_POST['btnAction']) && $_POST['btnAction'] == "Vote")
    {
        unVote($gmail_to_add);
        vote($gmail_to_add, $_POST['pokemon_to_vote'], $_POST['variance_to_vote']);
        $list_of_pokemon = getAllPokemon();
        $team = getTeam($gmail_to_add);
    }
    else if (!empty($_POST['btnAction']) && $_POST['btnAction'] == "name")
    {
        $list_of_pokemon = orderBy('name', $_SESSION["asc"]);

        $_SESSION["asc"] = ($_SESSION["asc"] == 'DESC') ? 'ASC': 'DESC';
        $_SESSION["last"] = 'name';
    }
    else if (!empty($_POST['btnAction']) && $_POST['btnAction'] == "variance")
    {
        $list_of_pokemon = orderBy('variance', $_SESSION["asc"]);

        $_SESSION["asc"] = ($_SESSION["asc"] == 'DESC') ? 'ASC': 'DESC';
        $_SESSION["last"] = 'variance';
    }
}
?>


<!-- 1. create HTML5 doctype -->
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="author" content="Kevin Kowahl, William McCarthy, Justin Kier">
  <meta name="description" content="User Page">

  <title> Welcome! </title>

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

<hr/>
<h2>Teams</h2>
<!-- <div class="row justify-content-center">   -->
<table class="w3-table w3-bordered w3-card-4" style="width:90%">
  <thead>
  <tr style="background-color:#B0B0B0">
    <th width="25%">gmail</th>
    <th width="25%">natl_dex</th>
    <th width="20%">variance</th>
    <th width="20%">Delete ?</th>
  </tr>
  </thead>
  <?php foreach ($team as $member): ?>
  <tr>
    <td><?php echo $member['gmail']; ?></td>
    <td><?php echo $member['natl_dex']; ?></td>
    <td><?php echo $member['variance']; ?></td>
    <td>
    <form action="simpleform.php" method="post">
        <input type="submit" value="Delete Member" name="btnAction" class="btn btn-danger" />
        <input type="hidden" name="gmail_to_delete" value="<?php echo $member['gmail'] ?>" />
        <input type="hidden" name="pokemon_to_delete" value="<?php echo $member['natl_dex'] ?>" />
        <input type="hidden" name="variance_to_delete" value="<?php echo $member['variance'] ?>" />
    </form>
  </tr>
  <?php endforeach; ?>


  </table>

<hr/>
<h2>List of Pokemon</h2>
<!-- <div class="row justify-content-center">   -->
<div style="overflow-y: scroll; height: 500px;">
<table class="w3-table w3-bordered w3-card-4" style="width:90%">
  <thead>
  <tr style="background-color:#B0B0B0">
      <?php
      if($_SESSION["last"] == "name") $asc = $_SESSION["asc"];
      else $asc = "ASC";
      ?>

      <form action="simpleform.php" method="post">
      <th width='20%'>
      <input type="submit" value="name" name="btnAction" class="btn btn-danger" />
      <input type="hidden" name="asc" value="<?php echo ".$asc." ?>"/>
      </th>
      </form>

      <?php
      if($_SESSION["last"] == "variance") $asc = $_SESSION["asc"];
      else $asc = "ASC";
      ?>

      <form action="simpleform.php" method="post">
      <th width='10%'>
      <input type="submit" value="variance" name="btnAction" class="btn btn-danger" />
      <input type="hidden" name="asc" value="<?php echo ".$asc." ?>"/>
      </th>
      </form>
      
    <th width="10%">Image</th>
    <th width="12%">Add To Team</th>
    <th width="5%"><input type="Submit" name="orderBy" value="Votes"/></th>
    <th width="12%">Vote For</th>
  </tr>
  </thead>
  <?php foreach ($list_of_pokemon as $pokemon): ?>
  <tr>

    <td><?php echo $pokemon['name']; ?></td>
    <td><?php echo $pokemon['variance']; ?></td>
    <td><?php echo "<img src='".$pokemon['image']."' height='30' >"; ?></td>
    <td>
      <form action="simpleform.php" method="post">
        <input type="submit" value="AddTeam" name="btnAction" class="btn btn-primary" />
        <input type="hidden" name="pokemon_to_add" value="<?php echo $pokemon['natl_dex'] ?>"/>
        <input type="hidden" name="variance_to_add" value="<?php echo $pokemon['variance'] ?>"/>
      </form>
    </td>
    <td>
      <?php echo getVotes($pokemon['name'], $pokemon['variance']);?>
    </td>
    <td>
      <form action="simpleform.php" method="post">
        <input type="submit" value="Vote" name="btnAction" class="btn btn-primary" />
        <input type="hidden" name="pokemon_to_vote" value="<?php echo $pokemon['natl_dex'] ?>"/>
        <input type="hidden" name="variance_to_vote" value="<?php echo $pokemon['variance'] ?>"/>
      </form>
    </td>
  </tr>
  <?php endforeach; ?>


  </table>
  </div>
<!-- </div>   -->


  <!-- CDN for JS bootstrap -->
  <!-- you may also use JS bootstrap to make the page dynamic -->
  <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->

  <!-- for local -->
  <!-- <script src="your-js-file.js"></script> -->

</div>
</body>
</html>

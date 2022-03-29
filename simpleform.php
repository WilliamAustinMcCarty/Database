<?php
session_start();
include("header.php");
require('connect-db.php');
require('pokemon_db.php');

$list_of_pokemon = getAllPokemon();
$team = getTeam();
$friend_to_update = null;

$gmail_to_add = $_SESSION["gmail"];
$pokemon_to_add = null;
$variance_to_add = null;

$gmail_to_delete = null;
$pokemon_to_delete = null;
$variance_to_delete = null;

if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    if (!empty($_POST['btnAction']) && $_POST['btnAction'] == "AddTeam")
    {
      echo"$pokemon_to_add";
      addTeam($gmail_to_add, $_POST['pokemon_to_add'], $_POST['variance_to_add']);
      $list_of_pokemon = getAllPokemon();
      $team = getTeam();
    }
    else if (!empty($_POST['btnAction']) && $_POST['btnAction'] == "Delete Member")
    {
      echo"$pokemon_to_delete";
      deleteTeam($_POST['gmail_to_delete'], $_POST['pokemon_to_delete'], $_POST['variance_to_delete']);
      $list_of_pokemon = getAllPokemon();
      $team = getTeam();
    }
    /*
    if (!empty($_POST['btnAction']) && $_POST['btnAction'] == "Add")
    {
      // If the button is clicked and its value is "Add" then call addFriend() function

      addFriend($_POST['name'], $_POST['major'], $_POST['year']);
      $list_of_pokemon = getAllPokemon();
      $team = getTeam();
    }
    else if (!empty($_POST['btnAction']) && $_POST['btnAction'] == "Update")
    {
      // echo "Update --->" .  $_POST['friend_to_update'] ;
      // If the button is clicked and its value is "Update" then retrieve info about that friend.
      // We'll later fill in the friend's info in the form so that a user can update the info.

      $friend_to_update = getFriend_byName($_POST['friend_to_update']);

      // To fill in the form, assign the pieces of info to the value attributes of form input textboxes.
      // Then, we'll wait until a user makes some changes to the friend's info
      // and click the "Confirm update" button to actually make it reflect the database.
      // (also note: "name" is a primary key -- refer to the friends table we created, thus can't be updated)
    }
    else if (!empty($_POST['btnAction']) && $_POST['btnAction'] == "Delete")
    {
      deleteFriend($_POST['friend_to_delete']);
      $list_of_pokemon = getAllPokemon();
      $team = getTeam();
    }

    if (!empty($_POST['btnAction']) && $_POST['btnAction'] == "Confirm update")
    {
      updateFriend($_POST['name'], $_POST['major'], $_POST['year']);
      $list_of_pokemon = getAllPokemon();
      $team = getTeam();
    }
    */
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
  <h1> Pokemon Book </h1>

  <form name="mainForm" action="simpleform.php" method="post">
  <div class="row mb-3 mx-3">
    Name:
    <input type="text" class="form-control" name="name" required
            value="<?php if ($friend_to_update!=null) echo $friend_to_update['name'] ?>"
    />
  </div>
  <div class="row mb-3 mx-3">
    Year:
    <input type="number" class="form-control" name="year" required min="1" max="4"
            value="<?php if ($friend_to_update!=null) echo $friend_to_update['year'] ?>"
    />
  </div>
  <div class="row mb-3 mx-3">
    Major:
    <input type="text" class="form-control" name="major" required
            value="<?php if ($friend_to_update!=null) echo $friend_to_update['major'] ?>"
    />
  </div>
  <input type="submit" value="Add" name="btnAction" class="btn btn-dark"
        title="insert a friend" />
  <input type="submit" value="Confirm update" name="btnAction" class="btn btn-dark"
        title="confirm update a friend" />
</form>

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
<table class="w3-table w3-bordered w3-card-4" style="width:90%">
  <thead>
  <tr style="background-color:#B0B0B0">
    <th width="20%">Name</th>
    <th width="10%">Variance</th>
    <th width="12%">Add To Team</th>
    <th width="12%">Delete ?</th>
  </tr>
  </thead>
  <?php foreach ($list_of_pokemon as $pokemon): ?>
  <tr>

    <td><?php echo $pokemon['name']; ?></td>
    <td><?php echo $pokemon['variance']; ?></td>
    <td>
      <form action="simpleform.php" method="post">
        <input type="submit" value="AddTeam" name="btnAction" class="btn btn-primary" />
        <input type="hidden" name="pokemon_to_add" value="<?php echo $pokemon['natl_dex'] ?>"/>
        <input type="hidden" name="variance_to_add" value="<?php echo $pokemon['variance'] ?>"/>
      </form>
    </td>
    <td>
    <form action="simpleform.php" method="post">
        <input type="submit" value="Delete" name="btnAction" class="btn btn-danger" />
        <input type="hidden" name="friend_to_delete" value="<?php echo $pokemon['name'] ?>" />
      </form>
    </td>
  </tr>
  <?php endforeach; ?>


  </table>
<!-- </div>   -->


  <!-- CDN for JS bootstrap -->
  <!-- you may also use JS bootstrap to make the page dynamic -->
  <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->

  <!-- for local -->
  <!-- <script src="your-js-file.js"></script> -->

</div>
</body>
</html>
<?php 
session_start(); //for session tracking, if you lose the session on a page, put this at the VERY TOP
include ("pokemondbcontroller.php");

$command="login"; //default command for pokemondbcontroller

if (isset($_GET["command"])){ //commands to be passed in by forms
  $command=$_GET["command"];
}

if(!isset($_SESSION["gmail"])){ //if not logged in, log-in command.
  $command="login";
}

//initialize and start the controller
$controller = new pokemondbcontroller($command);
$controller->run();


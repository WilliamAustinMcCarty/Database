<?php
include("Database.php");

class pokemondbcontroller{
    private $cmd;

    private $db; //use this to query commands
    //examples:
    //$this->db->query("select * from pokemon");
    //$this->db->query("select * from has where type=:type;", ":type", "Grass");

    //constructor
    public function __construct($cmd){
        $this->cmd = $cmd;
        $this->db = new Database(); //not yet implemented
    }

    public function run(){
        switch($this->cmd){ //use this to trigger commands (from $_GET)
            case "userPage":
                $this->userPage();
                break;
            case "logout":
                $this->logOut();
                break;
            case "pokeList":
                $this->pokeList();
                break; //remember to break or you will run into default case
            case "login":
            default:
                $this->login(); //write private functions to do stuff
        }
    }

    private function login(){
        $pw=false;
        if (isset($_POST["gmail"])){ //user is logging in
            $user = $this->db->query("select * from user where gmail=:gmail;",":gmail",$_POST["gmail"]);
            if (empty($user)){ //New user to log in
                $insert = $this->db->query("insert into user (gmail, passwd) values(:gmail, :passwd);",":gmail:passwd",$_POST["gmail"], password_hash($_POST["passwd"], PASSWORD_DEFAULT));
                $_SESSION["gmail"] = $_POST["gmail"];
                $pw=true;
            } else { //Re-log old user
                if (password_verify($_POST["passwd"], $user[0]["passwd"])){ //verifies right password
                    $_SESSION["gmail"] = $_POST["gmail"]; //get username from $_SESSION["gmail];
                    $pw=true;
                } else { //wrong password
                }
            }
            header("Location: ?command=userPage"); //could also read: "Location: index.php?command=userPage
        }
        include("login.php");
        if(!$pw){
            echo "<div class=\"alert alert-danger\" role=\"alert\"> Wrong Password </div>";
        }
    }

    private function userPage(){
        include("simpleform.php");
    }

    private function logOut(){
        session_destroy(); //all $_SESSION[] variables are unset
        include("login.php");
    }

    private function pokeList(){
        $order = 'natl_dex';
        if(isset($_POST["orderBy"])){
            $order=$_POST["orderBy"];
        }
        $pokemon = $this->db->query("select * from pokemon order by ".$order);
        $_SESSION["pokemon"] = $pokemon;
        include("header.php");
        include("poke.php");
    }
}
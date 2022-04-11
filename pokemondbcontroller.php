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
            case "fullPage":
                $this->fullPage();
                break;
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
        $errormsg = "No error";
        if (isset($_POST["gmail"])){ //user is logging in
            $user = $this->db->query("select * from user where gmail=:gmail;",":gmail",$_POST["gmail"]);
            if (empty($user)){ //New user to log in
                if (ctype_space($_POST["gmail"]) || empty($_POST["gmail"])){
                    $errormsg = "no Username";
                } else {
                    $insert = $this->db->query("insert into user (gmail, passwd) values(:gmail, :passwd);",":gmail:passwd",$_POST["gmail"], password_hash($_POST["passwd"], PASSWORD_DEFAULT));
                    $_SESSION["gmail"] = $_POST["gmail"];
                    header("Location: ?command=userPage");
                }
            } else { //Re-log old user
                if (password_verify($_POST["passwd"], $user[0]["passwd"])){ //verifies right password
                    $_SESSION["gmail"] = $_POST["gmail"]; //get username from $_SESSION["gmail];
                    header("Location: ?command=userPage");
                } else { //wrong password
                    $errormsg = "Wrong Password";
                }
            }
             //could also read: "Location: index.php?command=userPage
        }
        include("login.php");
    }

    private function userPage(){
        include("simpleform.php");
    }

    private function logOut(){
        $errormsg = "logout";
        session_destroy(); //all $_SESSION[] variables are unset
        include("login.php");
    }

    private function pokeList(){
        $order = 'natl_dex';
        if(isset($_POST["orderBy"])){
            $order=$_POST["orderBy"];
        }

        $asc = 'ASC';
        if(isset($_POST["direction"])){
            $asc=$_POST["direction"];
        }

        $pokemon = $this->db->query("select * from pokemon order by ".$order." ".$asc);

        $_SESSION["pokemon"] = $pokemon;
        $_SESSION["asc"] = ($asc == 'DESC') ? 'ASC': 'DESC';
        $_SESSION["last"] = $order;

        include("header.php");
        include("poke.php");
    }

    private function fullPage(){
        $info = "Failure to get Pokemon";
        $natl = "Failure to get natl dex";
        $var = "Failure to get Varience";
        if(isset($_POST["fullPokemon"])){
            $info = explode("|", $_POST["fullPokemon"]);
            $natl = $info[0];
            $var = $info[1];

            //egg_grp
            $egg = $this->db->query("select egg_grp from egg_grp where natl_dex = :natl", ":natl", $natl);
            //type
            $type = $this->db->query("select type from has where natl_dex = :natl AND variance = :var", ":natl:var", $natl, $var);
            //weak against
            $weak = array();
            $weakrmv = array();
            for ($i = 0; $i<count($type); $i++){
                $weakrmv[$i] = $this->db->query("select weakType from weakagainst where strongType = :type", ":type", $type[$i]["type"]);
            }
            for ($i = 0; $i<count($type); $i++){
                $weak[$i] = $this->db->query("select strongType from strongAgainst where weakType = :type", ":type", $type[$i]["type"]);
            }            
            //strong against
            //isn't affected by
            //stats / picture /
            $all = $this->db->query("select * from pokemon where natl_dex = :natl AND variance = :var", ":natl:var", $natl, $var);
        }
        include("fullpage.php");
    }
}

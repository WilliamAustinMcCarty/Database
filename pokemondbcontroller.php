<?php
include("Database.php");

class pokemondbcontroller{
    private $cmd;

    private $pkmdb; //use this to query commands
    //example:
    //$this->pkmdb->query("select * from pokemon");
    //$this->pkmndb->query("select * from pokemon where)

    //constructor
    public function __construct($cmd){
        $this->cmd = $cmd;
        $this->pkmdb = new Database(); //not yet implemented
    }

    public function run(){
        switch($this->cmd){ //use this to trigger commands (from $_GET)
            case "login":
            default:
                $this->login(); //write private functions to do stuff
        }
    }

    private function login(){
        if (isset($_POST["name"])){ //user is logging in
        }
        //var_dump($this->pkmdb->query("select * from pokemon;"));
    }
}
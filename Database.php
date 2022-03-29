<?php

class Database{
    private $mypdo;

    //Including these directly is a security issue.
    //We can modify them to be in a Config file if we want
    private $username = 'root';
    private $password = '';
    private $host = 'localhost:3306';
    private $dbname = 'pokemondb';

    public function __construct(){
        $dsn = "mysql:host=".$this->host.";dbname=".$this->dbname;
        $this->mypdo = new PDO($dsn, $this->username, $this->password);
    }

    //example how to use:
    //$Database->query("insert into friends values(:name, :major, :year);", ":name:major:year", $name, $major, $year);
    public function query($query, string $bparam=null, ...$params){
        $bindarr = explode(":", $bparam);
        $ret = $this->mypdo->prepare($query);
        echo gettype($bindarr[0]);
        if ($bparam != null){  //defaults null, no params to bind
            $count = 0;
            foreach ($bindarr as $v){
                if (!empty($v)){ //expecting $bindarr[0] to have an empty string, idky.
                    $ret->bindValue(":".$v,$params[$count]);
                    $count++; //if formatted correctly, both arrays should stay in bounds
                }
            }
        }
        if (!$ret->execute()){ //if execute returns false there was a problem
            return false;
        }
        $return = $ret->fetchAll();
        $ret->closeCursor();
        return $return;
    }
}

?>
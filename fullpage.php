<?php
// var_dump($egg);
// var_dump ($all[0]);
$name = $all[0]["name"];
$variance = $all[0]["variance"];
$img = $all[0]["image"];

$egg1 = $egg[0]["egg_grp"];
$egg2="";
if(isset($egg[1]["egg_grp"])){
    $egg2 = $egg[1]["egg_grp"];
}

$type1 = $type[0]["type"];
$type2 = "";
if(isset($type[1]["type"])){
    $type2 = $type[1]["type"];
}

//MAKING WEAKNESSES FOR DISPLAY
$weakList = array();
$inc = 0;
foreach ($weak as $w){
    foreach ($w as $wt){
        $weakList[$wt["strongType"]] = $wt["strongType"]; //this is scuffed? lol :(
    }
}
//nested loops are fun!
//basically differences the tables to get the right weak types
foreach($weak as $w){
    foreach($w as $wt){
        foreach($weakrmv as $wrmv){
            foreach($wrmv as $rmv){
                if (($wt["strongType"] === $rmv["weakType"])){
                    unset($weakList[$wt["strongType"]]);
                }
            }
        }
    }
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">  
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="Kevin Kowahl, William McCarthy, Justin Kier">
        <meta name="description" content="Pokemon Information">  
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title> <?=$name?> </title>
        
        <!-- Icon in tab -->
        <link rel="icon" type="image/png" href="http://www.cs.virginia.edu/~up3f/cs4750/images/db-icon.png" />
        
        <!-- include your CSS -->
        <!-- <link rel="stylesheet" href="custom.css" />  -->
    </head>
    <body>
        <h1> <?=$name?> (<?=$variance?>)</h1>
        <img src="<?=$img?>" style="width: 300px;"/>
        <h2> Type(s): <?=$type1?>
        <?php
            if (!empty($type2)){?>
            | <?=$type2?>
        <?php
        }
        ?> </h2>
        <h3> Egg group(s): <?=$egg1?> <?php
            if(!empty($egg2)){?>
                | <?=$egg2?>
           <?php }
        ?>
        </h3>
        <p> <?=$name?> is weak against <?php
        foreach($weakList as $wt => $w){
            echo ($w.","); //fix later
        }
        ?> moves</p>
        <form action="?command=pokeList" method="post">
            <input type="submit" value="See Pokémon List!"/>
        </form>
    </body>
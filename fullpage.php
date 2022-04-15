<?php
// var_dump($weak);
// var_dump ($noEffect);
// var_dump ($type);
// var_dump($evodex);
$name = $all[0]["name"];
$variance = $all[0]["variance"];
$img = $all[0]["image"];

$atk= $all[0]["atk"];
$spAtk= $all[0]["spAtk"];
$def= $all[0]["def"];
$spDef= $all[0]["spDef"];
$hp= $all[0]["hp"];
$speed= $all[0]["speed"];
$total=0;

//We would have liked calculating stat total to be one of our ADV SQL commands, but since the trigger never runs despite being in our database, we have calculated it here.
$total = $atk + $spAtk + $def + $spDef + $hp + $speed;

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
        foreach($noEffect as $noE){
            foreach($noE as $e){
                if ($wt["strongType"] === $e["attackingType"]){
                    unset($weakList[$e["attackingType"]]);
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
        <table >
            <tr>
                <td><img src="<?=$img?>" style="width: 300px;"/></td>
                <td><table class="table">
                    <tr>
                        <th> HP </th>
                        <th> Atk </th>
                        <th> Def </th>
                        <th> SpAtk </th>
                        <th> SpDef </th>
                        <th> Speed </th>
                        <th> Total </th>
                    </tr>
                    <tr>
                        <td> <?=$hp?> </td>
                        <td> <?=$atk?> </td>
                        <td> <?=$def?> </td>
                        <td> <?=$spAtk?> </td>
                        <td> <?=$spDef?> </td>
                        <td> <?=$speed?> </td>
                        <td> <?=$total?> </td>
                    </tr>
                </table></td>
            </tr>
        </table>
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
        <p> Weaknesses: <?php
        foreach($weakList as $wt => $w){
            echo ("<button class='btn btn-sm btn-dark' style='margin: 3px;' disabled>".$w."</button>"); //fix later
        }
        ?><?php if(!empty($noEffect[0])or!empty($noEffect[1])){ ?><br> Not Effected By: <?php
            foreach($noEffect as $w){
                foreach($w as $n){
                    echo ("<button class='btn btn-sm btn-dark' style='margin: 3px;' disabled>".$n["attackingType"]."</button>"); //fix later
                }
            }
        }
        ?>
        </p>
        <?php
            if (!empty($evodex)){
        ?>
        <form action="?command=fullPage" method = "post">
            <input type="submit" value="<?=$name?> evolves from <?=$evoname[0]["name"]?>"/>
            <input type="hidden" name="fullPokemon" value="<?=$evodex?>|<?=$evovar?>"/>
        </form>
        <?php
            }
        ?>
        <form action="?command=pokeList" method="post">
            <input type="submit" value="See Pokémon List!"/>
        </form>
    </body>
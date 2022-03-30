<?php
function addFriend($name, $major, $year)
{
	// db handler
	global $db;

	// write sql
	// insert into friends (name, major, year) values('someone', 'cs', 4)";
	// or
	// insert into friends values('someone', 'cs', 4)";

// bad practice (but convenient)
	// $query = "insert into friends values('" . $name . "', '" . $major . "'," . $year . ")";

// good practice: use a prepared statement
// 1. prepare
// 2. bindValue & execute
	$query = "insert into friends values(:name, :major, :year)";

	// execute the sql
	// $statement = $db->query($query);   // query() will compile and execute the sql
	$statement = $db->prepare($query);

	$statement->bindValue(':name', $name);
	$statement->bindValue(':major', $major);
	$statement->bindValue(':year', $year);

	$statement->execute();

	// release; free the connection to the server so other sql statements may be issued
	$statement->closeCursor();
}

function deleteTeam($gmail, $natl_dex, $variance)
{
	global $db;

    echo "deleting $gmail, $natl_dex, $variance";

    $query = "delete from chooseteam where (gmail=:gmail and natl_dex=:natl_dex and variance=:variance)";
	$statement = $db->prepare($query);
	$statement->bindValue(':gmail', $gmail);
	$statement->bindValue(':natl_dex', $natl_dex);
	$statement->bindValue(':variance', $variance);
	$statement->execute();
	$statement->closeCursor();
}

function addTeam($gmail, $natl_dex, $variance)
{
	// db handler
	global $db;

    echo "adding $gmail, $natl_dex, $variance";

	// write sql
	// insert into friends (name, major, year) values('someone', 'cs', 4)";
	// or
	// insert into friends values('someone', 'cs', 4)";

// bad practice (but convenient)
	// $query = "insert into friends values('" . $name . "', '" . $major . "'," . $year . ")";

// good practice: use a prepared statement
// 1. prepare
// 2. bindValue & execute
	$query = "insert into chooseteam values(:gmail, :natl_dex, :variance)";

	// execute the sql
	// $statement = $db->query($query);   // query() will compile and execute the sql
	$statement = $db->prepare($query);

	$statement->bindValue(':gmail', $gmail);
	$statement->bindValue(':natl_dex', $natl_dex);
	$statement->bindValue(':variance', $variance);

	$statement->execute();

	// release; free the connection to the server so other sql statements may be issued
	$statement->closeCursor();
}

function getAllPokemon()
{
	global $db;
	$query = "select * from pokemon";

// bad
	// $statement = $db->query($query);     // 16-Mar, stopped here, still need to fetch and return the result

// good: use a prepared stement
// 1. prepare
// 2. bindValue & execute
	$statement = $db->prepare($query);
	$statement->execute();

	// fetchAll() returns an array of all rows in the result set
	$results = $statement->fetchAll();

	$statement->closeCursor();

	return $results;
}

function getTeam($gmail)
{
	global $db;
	$query = "select * from chooseteam where gmail=:gmail";

// bad
	// $statement = $db->query($query);     // 16-Mar, stopped here, still need to fetch and return the result

// good: use a prepared stement
// 1. prepare
// 2. bindValue & execute
	$statement = $db->prepare($query);
	$statement->bindValue(':gmail', $gmail);
	$statement->execute();

	// fetchAll() returns an array of all rows in the result set
	$results = $statement->fetchAll();

	$statement->closeCursor();

	return $results;
}

function getFriend_byName($name)
{
	global $db;
	$query = "select * from friends where name = :name";
	// "select * from friends where name = $name";

// 1. prepare
// 2. bindValue & execute
	$statement = $db->prepare($query);
	$statement->bindValue(':name', $name);
	$statement->execute();

	// fetch() returns a row
	$results = $statement->fetch();

	$statement->closeCursor();

	return $results;
}

function updateFriend($name, $major, $year)
{
	global $db;
	$query = "update friends set major=:major, year=:year where name=:name";
	$statement = $db->prepare($query);
	$statement->bindValue(':major', $major);
	$statement->bindValue(':year', $year);
	$statement->bindValue(':name', $name);
	$statement->execute();
	$statement->closeCursor();
}

function deleteFriend($name)
{
	global $db;
	$query = "delete from friends where name=:name";
	$statement = $db->prepare($query);
	$statement->bindValue(':name', $name);
	$statement->execute();
	$statement->closeCursor();
}


function orderBy($order)
{
	global $db;
	$query = 'select * from pokemon ORDER BY '.$order;


	$statement = $db->prepare($query);
	$statement->execute();

	$results = $statement->fetchAll();

	$statement->closeCursor();

	return $results;
}

?>

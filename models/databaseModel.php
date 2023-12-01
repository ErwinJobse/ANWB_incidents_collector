<?php

define('__ROOT__', dirname(dirname(__FILE__)));

require_once(__ROOT__.'/config/setup.php');
class DB {

    // Connect to database
    public $error = "";
    private $pdo = null;
    private $stmt = null;
    function __construct () {
        $this->pdo = new PDO(
            "mysql:host=".DB_HOST.";dbname=".DB_NAME.";charset=".DB_CHARSET,
            DB_USER, DB_PASSWORD, [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
        ]);
    }

    // Close connection
    function __destruct () {
        if ($this->stmt!==null) { $this->stmt = null; }
        if ($this->pdo!==null) { $this->pdo = null; }
    }

    // receive data query
    function receiveData ($sql, $data=null) {
        $this->stmt = $this->pdo->prepare($sql);
        $this->stmt->execute($data);
        return $this->stmt->fetchAll();
    }

    // insert data query
    function insertData  ($sql, $data=null) {
        $this->stmt = $this->pdo->prepare($sql);
        $this->stmt->execute($data);
    }


}

define("DB_HOST", $databaseHost);
define("DB_NAME", $databaseName);
define("DB_CHARSET", $databaseCharset);
define("DB_USER", $datebaseUsername);
define("DB_PASSWORD", $datebasePassword);


// Create database object
$_DB = new DB();


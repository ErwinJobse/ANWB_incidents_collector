<?php

if (!defined('__ROOT__')) {
    define('__ROOT__', dirname(dirname(__FILE__)));
}

require_once(__ROOT__ . '/config/setup.php');

class DB
{
    // Database configuration
    private $dbHost;
    private $dbName;
    private $dbCharset;
    private $dbUser;
    private $dbPassword;

    // Connect to the database
    public $error = "";
    private $pdo = null;
    private $stmt = null;


    function __construct()
    {
        // Set database configuration from external setup
        $this->dbHost = $GLOBALS['databaseHost'];
        $this->dbName = $GLOBALS['databaseName'];
        $this->dbCharset = $GLOBALS['databaseCharset'];
        $this->dbUser = $GLOBALS['datebaseUsername'];
        $this->dbPassword = $GLOBALS['datebasePassword'];

        $this->connect();
    }

    // Connect to the database
    private function connect()
    {
        try {
            $this->pdo = new PDO(
                "mysql:host=" . $this->dbHost . ";dbname=" . $this->dbName . ";charset=" . $this->dbCharset,
                $this->dbUser,
                $this->dbPassword,
                [
                    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                    PDO::ATTR_EMULATE_PREPARES => false
                ]
            );
        } catch (PDOException $e) {
            die("Connection failed: " . $e->getMessage());
        }
    }

    // Close the connection
    function __destruct()
    {
        if ($this->stmt !== null) {
            $this->stmt = null;
        }
        if ($this->pdo !== null) {
            $this->pdo = null;
        }
    }

    /**
     * Receive data query.
     *
     * @param string $sql The SQL query to execute
     * @param array|null $data The data to bind to the query
     *
     * @return false|array Returns the result set as an associative array.
     */
    function receiveData(string $sql, array $data = null): false|array
    {
        $this->stmt = $this->pdo->prepare($sql);
        $this->stmt->execute($data);
        return $this->stmt->fetchAll();
    }

    /**
     * Insert data query.
     *
     * @param string $sql The SQL query to execute
     * @param array $data  The data to bind to the query
     *
     * @return void
     */
    function insertData(string $sql, array $data): void
    {
        $this->stmt = $this->pdo->prepare($sql);
        $this->stmt->execute($data);
    }
}
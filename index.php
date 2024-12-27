<?php
$host = '127.0.0.1';
$db   = 'mydatabase';
$user = 'root';
$pass = 'mysql_root_password';
$dsn  = "mysql:host=$host;dbname=$db;charset=utf8mb4";

try {
    $pdo = new PDO($dsn, $user, $pass);
    echo "Connected to MySQL successfully! With version 1";
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
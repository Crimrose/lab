<?php
$host = 'db';
$db   = '127.0.0.1';
$user = 'myuser';
$pass = 'mypassword';
$dsn  = "mysql:host=$host;dbname=$db;charset=utf8mb4";

try {
    $pdo = new PDO($dsn, $user, $pass);
    echo "Connected to MySQL successfully!";
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
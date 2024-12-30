<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test example</title>
</head>
<body>
    <h1>
        <?php
            $host = 'db';
            $db   = 'mydatabase';
            $user = 'myuser';
            $pass = 'mypassword';
            $dsn  = "mysql:host=$host;dbname=$db;charset=utf8mb4";

            try {
                $pdo = new PDO($dsn, $user, $pass);
                echo "Connected to MySQL successfully!";
            } catch (PDOException $e) {
                echo "Connection failed: " . $e->getMessage();
            }
        ?>
    </h1>
</body>
</html>

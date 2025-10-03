<?php
$host = 'localhost';
$dbname = 'serenatto';
$username = 'root';
$password = 'admin';

try{
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Conexao bem-sucedida!";
} catch(PDOException $e) {
    echo "Erro na conexao: " . $e->getMessage();
}
?>

-- cria o schema serenatto
CREATE SCHEMA 'serenatto';
-- tabela produtos
CREATE TABLE `serenatto`.`produtos` (
    `id` INT NOT NULL AUTO_INCREMENT, 
    `tipo` VARCHAR(45) NOT NULL, 
    `nome` VARCHAR(45) NOT NULL, 
    `descricao` VARCHAR(90) NOT NULL, 
    `imagem` VARCHAR(80) NOT NULL, 
    `preco` DECIMAL (5,2) NOT NULL, 
    PRIMARY KEY (`id`)
);
-- dados na tabela produtos
INSERT INTO `serenatto`.`produtos` (`tipo`, `nome`, `descricao`, `imagem`, `preco`) VALUES ('Café', 'Café Cremoso', 'Café cremoso irresistivelmente suave e que envolve seu paladar', 'cafe-cremoso.jpg', '5.00');
INSERT INTO `serenatto`.`produtos` (`tipo`, `nome`, `descricao`, `imagem`, `preco`) VALUES ('Café', 'Café com Leite', 'A harmonia perfeita do café e do leite, uma experiência reconfortante', 'cafe-com-leite.jpg', '2.00');
INSERT INTO `serenatto`.`produtos` (`tipo`, `nome`, `descricao`, `imagem`, `preco`) VALUES ('Café', 'Cappuccino', 'Café suave, leite cremoso e uma pitada de sabor adocicado', 'cappuccino.jpg', '7.00');
INSERT INTO `serenatto`.`produtos` (`tipo`, `nome`, `descricao`, `imagem`, `preco`) VALUES ('Café', 'Café Gelado', 'Café gelado refrescante, adoçado e com notas sutis de baunilha ou caramelo.', 'cafe-gelado.jpg', '3.00');
INSERT INTO `serenatto`.`produtos` (`tipo`, `nome`, `descricao`, `imagem`, `preco`) VALUES ('Almoço', 'Bife', 'Bife, arroz com feijão e uma deliciosa batata frita', 'bife.jpg', '27.90');
INSERT INTO `serenatto`.`produtos` (`tipo`, `nome`, `descricao`, `imagem`, `preco`) VALUES ('Almoço', 'Filé de peixe', 'Filé de peixe salmão assado, arroz, feijão verde e tomate.', 'prato-peixe.jpg', '24.99');
INSERT INTO `serenatto`.`produtos` (`tipo`, `nome`, `descricao`, `imagem`, `preco`) VALUES ('Almoço', 'Frango', 'Saboroso frango à milanesa com batatas fritas, salada de repolho e molho picante', 'prato-frango.jpg', '23.00');
INSERT INTO `serenatto`.`produtos` (`tipo`, `nome`, `descricao`, `imagem`, `preco`) VALUES ('Almoço', 'Fettuccine', 'Prato italiano autêntico da massa do fettuccine com peito de frango grelhado', 'fettuccine.jpg', '22.50');

-- conexao-bd.php
-- $host = 'localhost';
-- $dbname = 'serenatto';
-- $username = 'root';
-- $password = 'admin';

-- try{
--     $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
--     $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
--     echo "Conexao bem-sucedida!";
-- } catch(PDOException $e) {
--     echo "Erro na conexao: " . $e->getMessage();
-- }

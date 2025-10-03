<?php

# Repositorio/ProdutoRepositorio.php
class ProdutoRepositorio
{
    # Atributo de conexão com o banco de dados
    private PDO $pdo;

    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    # Método para buscar produtos por tipo "Café"
    public function opcoesCafe(): array
    {
        # Seleciona os produtos do tipo café no banco de dados
        $sql1 = "SELECT * FROM produtos WHERE tipo = 'Café' ORDER BY preco";
        # Executa a query
        $statement = $this->pdo->query($sql1);
        # Armazena os produtos em um array 
        $produtosCafe = $statement->fetchAll(PDO::FETCH_ASSOC);

        # Mapeia os produtos para objetos da classe Produto 
        $dadosCafe = array_map(function($cafe) {
            # Cria um novo objeto Produto para cada produto no array associativo
            return new Produto(
                $cafe['id'],
                $cafe['tipo'],
                $cafe['nome'],
                $cafe['descricao'],
                $cafe['imagem'],
                $cafe['preco']
            );
            # Retorna o objeto Produto
        }, $produtosCafe); 

        return $dadosCafe;
    }

    # Método para buscar produtos por tipo "Almoço"
    public function opcoesAlmoco(): array
    {
        # Seleciona os produtos do tipo almoço no banco de dados
        $sql2 = "SELECT * FROM produtos WHERE tipo = 'Almoço' ORDER BY preco";
        # Executa a query
        $statement = $this->pdo->query($sql2);
        # Armazena os produtos em um array 
        $produtosAlmoco = $statement->fetchAll(PDO::FETCH_ASSOC);

        # Mapeia os produtos para objetos da classe Produto
        $dadosAlmoco = array_map(function($almoco) {
            # Cria um novo objeto Produto para cada produto no array associativo
            return new Produto(
                $almoco['id'],
                $almoco['tipo'],
                $almoco['nome'],
                $almoco['descricao'],
                $almoco['imagem'],
                $almoco['preco']
            );
            # Retorna o objeto Produto
        }, $produtosAlmoco); 

        return $dadosAlmoco;
    }

}
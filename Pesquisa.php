
<?php
//PREENCHA OS DADOS DE CONEXÃO A SEGUIR:
$host= 'localhost';
$bd= 'lojacanecas';
$senhabd= '';
$userbd = $bd;
// RECEBENDO OS DADOS PREENCHIDOS DO FORMULÁRIO !
$nome = $_POST ["nome"]; //atribuição do campo "nome" vindo do formulário para variavel
$id = $_POST ["id"]; //atribuição do campo "id" vindo do formulário para variavel
$valor= $_POST ["valor"]; //atribuição do campo "valor" vindo do formulário para variavel
$quantidade= $_POST ["quantidade"]; //atribuição do campo "quantidade" vindo do formulário para variavel
//conectando com o localhost - mysql
$conexao = mysql_connect($host,$bd, $senhabd);
if (!$conexao)
die ("Erro de conexão com localhost, o seguinte erro ocorreu -> ".mysql_error());
//conectando com a tabela do banco de dados
$banco = mysql_select_db($bd,$conexao);
if (!$banco)
die ("Erro de conexão com banco de dados, o seguinte erro ocorreu -> ".mysql_error());
$query = "SELECT nome,id,valor,quantidade FROM canecas"; 
$result_query = mysql_query( $query ) or die(' Erro na query:' . $query . ' ' . mysql_error() );
mysql_query($query,$conexao);
echo "Resultados Encontrados!";

while ($row = mysql_fetch_array( $result_query )) { print $row[nome] . " -- " . $row[valor] . " -- " . $row[quantidade]; " -- " . $row[quantidade];}
?>
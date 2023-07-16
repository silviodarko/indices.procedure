# indices.procedure

# Projeto de Criação de Índices e Procedures em Banco de Dados

Este projeto consiste na criação de índices em um banco de dados e na implementação de uma procedure para manipulação de dados. O objetivo é melhorar o desempenho das consultas e oferecer uma maneira estruturada de manipular os dados no SGBD.

## Índices

Foram criados os seguintes índices para otimizar as consultas:

1. Índice `idx_employees_department_id` na tabela `employees`, na coluna `department_id`. Esse índice facilita a consulta sobre o departamento com o maior número de pessoas.

2. Índice `idx_department_city` na tabela `department_city`, nas colunas `department_id` e `city_id`. Esse índice otimiza a consulta dos departamentos por cidade.

3. Índice `idx_employees_department_id` na tabela `employees`, na coluna `department_id`. Esse índice acelera a recuperação dos empregados por departamento.

Os índices foram escolhidos com base na frequência das consultas e no impacto que têm no desempenho do sistema.

## Procedure

Foi implementada a procedure `manipulate_data` que permite a manipulação de dados no banco de dados. A procedure recebe uma ação como parâmetro e executa instruções condicionais de acordo com a ação selecionada. As opções disponíveis são:

1. Select: Retorna o departamento com o maior número de pessoas.
2. Update: Atualiza um valor em uma tabela específica.
3. Delete: Remove registros de uma tabela específica.

A procedure foi criada para fornecer uma maneira segura e estruturada de manipular os dados no banco de dados, evitando a exposição direta das instruções SQL.

## Utilização

Para utilizar este projeto, siga as instruções abaixo:

1. Certifique-se de ter o ambiente de banco de dados configurado corretamente.

2. Execute os scripts SQL fornecidos para criar os índices e a procedure.

3. Utilize a chamada da procedure `manipulate_data` com o parâmetro correspondente à ação desejada para manipular os dados no banco de dados.

CALL manipulate_data(1, NULL, NULL); -- Consulta: Qual o departamento com maior número de pessoas?
CALL manipulate_data(2, NULL, NULL); -- Consulta: Quais são os departamentos por cidade?
CALL manipulate_data(3, NULL, NULL); -- Consulta: Relação de empregados por departamento;


Certifique-se de substituir as tabelas e colunas nos scripts de acordo com a estrutura do seu banco de dados.

## Notas Adicionais

- Este projeto é apenas um exemplo e deve ser adaptado às necessidades e à estrutura específica do seu sistema.

- Sempre teste as consultas e as instruções antes de executá-las em um ambiente de produção.

- Caso tenha dúvidas ou precise de mais informações, consulte a documentação do seu SGBD ou entre em contato com a equipe responsável pelo banco de dados.


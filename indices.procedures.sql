-- Criação dos índices

-- Índice para identificar o departamento com maior número de pessoas
CREATE INDEX idx_employees_department_id ON employees (department_id);

-- Índice para a consulta dos departamentos por cidade
CREATE INDEX idx_department_city ON department_city (department_id, city_id);

-- Índice para a relação de empregados por departamento
CREATE INDEX idx_employees_department_id ON employees (department_id);


-- Procedure para manipulação de dados

-- Criação da procedure
DELIMITER //
CREATE PROCEDURE manipulate_data
(
  IN action INT,
  IN param1 VARCHAR(255),
  IN param2 INT
)
BEGIN
  IF action = 1 THEN
    -- Consulta: Qual o departamento com maior número de pessoas?
    SELECT department_id, COUNT(*) AS total_employees
    FROM employees
    GROUP BY department_id
    ORDER BY total_employees DESC
    LIMIT 1;
  ELSEIF action = 2 THEN
    -- Consulta: Quais são os departamentos por cidade?
    SELECT d.department_id, d.department_name, c.city_name
    FROM departments d
    INNER JOIN department_city dc ON d.department_id = dc.department_id
    INNER JOIN cities c ON dc.city_id = c.city_id;
  ELSEIF action = 3 THEN
    -- Consulta: Relação de empregados por departamento
    SELECT d.department_name, COUNT(*) AS total_employees
    FROM departments d
    INNER JOIN employees e ON d.department_id = e.department_id
    GROUP BY d.department_name;
  ELSE
    -- Ação inválida
    SELECT 'Ação inválida';
  END IF;
END //
DELIMITER ;


-- Chamada da procedure para manipular os dados
CALL manipulate_data(1, NULL, NULL); -- Consulta: Qual o departamento com maior número de pessoas?
CALL manipulate_data(2, NULL, NULL); -- Consulta: Quais são os departamentos por cidade?
CALL manipulate_data(3, NULL, NULL); -- Consulta: Relação de empregados por departamento;


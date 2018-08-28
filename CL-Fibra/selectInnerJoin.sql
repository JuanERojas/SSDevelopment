SELECT * FROM cliente AS c
INNER JOIN nap AS n ON c.codnap = n.idnap
INNER JOIN pon AS p ON n.codpon = p.codigo;

SELECT c.idcliente, c.codcliente, p.codigo, n.numero AS caja, c.`time` FROM cliente AS c
INNER JOIN nap AS n ON c.codnap = n.idnap
INNER JOIN pon AS p ON n.codpon = p.codigo
ORDER BY p.codigo;

SELECT p.codigo AS PON, n.numero AS NAP, c.codcliente AS CLIENTE, c.`time` AS AGE FROM cliente AS c
INNER JOIN nap AS n ON c.codnap = n.idnap
INNER JOIN pon AS p ON n.codpon = p.codigo
ORDER BY p.codigo;
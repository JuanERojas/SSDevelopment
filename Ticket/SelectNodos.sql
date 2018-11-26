SELECT *
FROM `SS-DBTK`.reclamo r
INNER JOIN `SS-DB`.panel AS p ON r.nodo = p.nombre
INNER JOIN `SS-DB`.nodo AS n ON p.nodo = n.idnodo
WHERE n.nombre LIKE 'FTTH'
LIMIT 10;
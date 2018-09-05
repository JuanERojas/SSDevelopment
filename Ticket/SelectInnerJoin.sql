SELECT n.nombre AS Nodo, COUNT(*) AS cantidad FROM `ss-dbtk`.reclamo r
INNER JOIN `ss-db`.panel AS p ON r.nodo = p.nombre
INNER JOIN `ss-db`.nodo AS n ON p.nodo = n.idnodo
GROUP BY n.nombre;
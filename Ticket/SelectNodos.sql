SELECT dreclamo, t.nombre AS tecnico, nodo, problema, numcliente, `time`
FROM `SS-DBTK`.reclamo r
INNER JOIN `SS-DBTK`.tecnico AS t ON r.tecnico = t.idtecnico
INNER JOIN `SS-DB`.panel AS p ON r.nodo = p.nombre
INNER JOIN `SS-DB`.nodo AS n ON p.nodo = n.idnodo
WHERE n.nombre LIKE 'FTTH'
LIMIT 10;


SELECT idreclamo, t.nombre AS tecnico, nodo, problema, numcliente, time FROM reclamo r INNER JOIN tecnico AS t ON r.tecnico = t.idtecnico WHERE `time` > DATE_SUB(NOW(), INTERVAL '3:0:".$intervalo."' HOUR_SECOND) AND r.nodo LIKE '".$nodo."'  ORDER BY ".$orden.";";

SELECT r.idreclamo, t.nombre AS tecnico, r.nodo, r.problema, r.numcliente, r.time FROM `SS-DBTK`.reclamo r
			INNER JOIN `SS-DBTK`.tecnico AS t ON r.tecnico = t.idtecnico 
			INNER JOIN `SS-DB`.panel AS p ON r.nodo = p.nombre
			INNER JOIN `SS-DB`.nodo AS n ON p.nodo = n.idnodo
			WHERE n.nombre LIKE 'FTTH'
			ORDER BY "idreclamo";
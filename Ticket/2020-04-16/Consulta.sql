SELECT * 
FROM `SS-DBTK`.reclamo 
WHERE nodo LIKE 'ERROR' 
	AND ip LIKE '172.31.%'
    AND  (SUBSTRING(ip, 8, 3) > '151')
	AND (SUBSTRING(ip, 8, 3) < '175') 
    AND time > '2019-01-01 00:00:00'
ORDER BY time DESC;

SELECT * 
FROM `SS-DBTK`.reclamo;
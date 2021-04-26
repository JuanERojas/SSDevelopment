<?php
include_once 'BDConfiguracion.php';
/**
 * 
 * 
 * Descripcion de BDConexion
 * 
 * Esta clase implementa la conexión a una base de datos mediante el patrón Singleton.
 * 
 * @uses sqlsrv Extensión de PHP para acceder a bases de datos SQL Server
 * @see https://es.wikipedia.org/wiki/Singleton
 * 
 */
class BDConexion {
    
    private $config;
    private $con;
    public static $instancia;
            
    function __construct() {
        $this->config = new BDConfiguracion();
        
        $server = $this->config->getServidor();
        $db = $this->config->getBaseDatos();
        $uid = $this->config->getUsuario();
        $pwd = $this->config->getContrasenia();
        
    //    $connectionInfo = array("Database"=>$db, "UID"=>$uid, "PWD"=>$pwd);
    //    $this->con = mysql_connect($server, $connectionInfo);
    //    $this->con = mysql_connect($server, $uid, $pwd);

        $server = '172.16.2.173';
		
		$this->con = new mysqli($server, $uid, $pwd, $db);
		$this->con->set_charset("utf8");
		

        if(!$this->con){
            die("Error de conexion a la base de datos.");
        }
		
/*		if(!mysql_select_db($db)){
			die("Error de conexion a la base de datos.");
		}
*/		
    }
    
    /**
     * Retorna la instancia de la conexion.
     */
    public static function getInstancia() {
        if (!self::$instancia instanceof self) {
            self::$instancia = new self;
        }
        return self::$instancia;
    }
    
    /**
     * Retorna la conexion con el servidor.
     * @see sqlsrv_connect.
     * @return sqlsrv_connect conexion
     */
    public function getConexion() {
        return $this->con;
    }
}

<?php


/* 
 * Descripcion de BDConfiguracion
 * 
 * Esta clase lee los datos necesarios para la conexion a la base de datos leyendo
 * la informacion del archivo xml de configuracion
 * 
 */
class BDConfiguracion {
    
    private $servidor;
    private $baseDatos;
    private $usuario;
    private $contrasenia;
    
    function __construct() {
        $root = str_replace('\\','/', (getcwd().'/') );
        $root = substr($root,0,strpos($root, '/tickets/')+strlen('/tickets/'));
        $url = $root."conf/conexion.xml";

        //$conexiones = simplexml_load_file($url);
        $conexiones = false;
        
        if($conexiones){
            $this->servidor = $conexiones->conexion[0]->serverName;
            $this->baseDatos = $conexiones->conexion[0]->dataBase;
            $this->usuario = $conexiones->conexion[0]->uid;
            $this->contrasenia = $conexiones->conexion[0]->pwd;
        }else{

        //if(strlen($this->usuario) < 2){
            $this->servidor = "172.16.2.173";
            $this->baseDatos = "SS-DBTK";
            $this->usuario = "userticket";
            $this->contrasenia = "ReadWriteTk@SS";        }
        
    }
    
    function getServidor(){
        return "".$this->servidor;
    }
    
    function getBaseDatos(){
        return "".$this->baseDatos;
    }
    
    function getUsuario(){
        return "".$this->usuario;
    }
    
    function getContrasenia(){
        return "".$this->contrasenia;
    }
}


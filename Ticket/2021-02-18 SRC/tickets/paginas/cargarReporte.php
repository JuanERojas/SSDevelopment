<?php

require_once '../conf/Constants.php';
require_once '../conf/BDConexion.php';

const ROOT2 = "D:\\xampp\\htdocs\\Min";
require ROOT2.'/vendor/autoload.php';

include_once '../logs/logger.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;



if (isset($_POST['idCC']) && isset($_POST['idMes']) && isset($_POST['idAnio']) && (strlen( $_FILES['excel']['name']) > 0  )) {

    //------------------------------------------------------EXCEL-----------------------------------------

    $archivo = $_FILES['excel']['name']; //captura el nombre del archivo
    $tipo = $_FILES['excel']['type']; //captura el tipo de archivo (2003 o 2007)

    //lugar donde se copiara el archivo
	$destino = ROOT."/uploads/" . $archivo;

    if (!(copy($_FILES['excel']['tmp_name'], $destino)) ) {
        echo '<div class="alert alert-danger text-center" role="alert"> Primero se debe subir un archivo <div>';
    }

    if (file_exists("bak_" . $archivo) || file_exists($destino)) {

        $spreadsheet = new Spreadsheet();

        $inputFileType = 'Xlsx';
        $inputFileName = $destino;

        $reader = \PhpOffice\PhpSpreadsheet\IOFactory::createReader($inputFileType);
        $reader->setReadDataOnly(true);

        $worksheetNames = $reader->listWorksheetNames($inputFileName);

        $worksheetData = $reader->listWorksheetInfo($inputFileName);

        $worksheet = $worksheetData[0];
        $sheetName = $worksheet['worksheetName'];

        $reader->setLoadSheetsOnly($sheetName);
        $spreadsheet = $reader->load($inputFileName);

        $worksheet = $spreadsheet->getActiveSheet();
        $arr = $worksheet->toArray();

        //Columna Monto
        $total = 0;
        foreach (array_slice($arr, 2) as $dato) {
            $total = $total + $dato[8];
        }
        $total = $total * (-1);


        //------------------------------------------------------EXCEL-----------------------------------------

        $idCC = $_POST['idCC'];
        $idMes = $_POST['idMes'];
        $idAnio = $_POST['idAnio'];
        $valor = $total;
        $periodo = $idAnio . "" . $idMes;

        //No este repetido
        $repetido = false;

        $query = "SELECT * 
                FROM `CombControl`.`total_mensual`
                WHERE `periodo` = ".$periodo." 
                    AND `fk_centro_de_costo` = ".$idCC;

        $res = BDConexion::getInstancia()->getConexion()->query($query);

        
        while ($row = $res->fetch_object()) {
            $repetido = true;
        }

        if($repetido){
            $res = false;
        }else{
            $query = "INSERT INTO `CombControl`.`total_mensual` (`idtotal_mensual`, `valor`, `periodo`, `fk_centro_de_costo`)
	VALUES (NULL, " . $valor . ", " . $periodo . ", " . $idCC . ");	";

        $res = BDConexion::getInstancia()->getConexion()->query($query);
        }


        if ($res) {
            registrar("TOTAL MENSUAL", "ALTA");
            echo '<div class="alert alert-success text-center" role="alert"> Se realizo la carga del reporte mensual correctamente <div>';
        } else {
            if($repetido){
                echo '<div class="alert alert-danger text-center" role="alert"> Registro repetido!<div>';   
            }
            echo '<div class="alert alert-danger text-center" role="alert"> No se realizo la carga del reporte <div>';
        }
    } else {
        echo "Necesitas primero importar el archivo";
    }
    unlink($destino);
} else {
    echo '<div class="alert alert-danger text-center" role="alert"> Primero debes subir un archivo <div>';
}

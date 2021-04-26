
let draw = false;
init();

function init() {
    
// TABLA COMPLETA POR FECHA   
    const table = $('#datosXFecha').DataTable({
        'info': true,
        "aaSorting": [[ 5, "desc" ]], 
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"
        },
        responsive: true,
        dom: '<"top"Blr>t<"bottom"fp>i<"clear">',
        buttons: [{
                extend: 'csv',
                //text: 'CSV',
                text: '<i class="fas fa-file-csv fa-1x"></i> <i>Exportar a CSV</i>',
                title: 'Tabla Datos por Fecha',
                className: 'btn btn-info btn-xs'
            },
            {
                extend: 'excel',
                //text: 'Excel',
                text: '<i class="fas fa-file-excel"></i> <i>Exportar a Excel</i>',
                title: 'Tabla Datos por Fecha',
                className: 'btn btn-info btn-xs'
            },
            {
                extend: 'pdf',
                //text: 'PDF',
                text: '<i class="fas fa-file-pdf fa-1x"></i> <i>Exportar a PDF</i>',
                title: 'Tabla Datos por Fecha',
                className: 'btn btn-info btn-xs'
            },
            {
                extend: 'print',
                //text: 'Imprimir',
                text: '<i class="fas fa-print"></i> <i>Imprimir</i>',
                title: 'Tabla Datos por Fecha',
                className: 'btn btn-info btn-xs'
            }
        ]
    });

// TABLA POR TIPO DE RECLAMO   
    const table2 = $('#datosXTipo').DataTable({
        'info': true,
        "aaSorting": [[ 1, "desc" ]], 
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"
        },
        responsive: true,
        dom: '<"top"Blr>t<"bottom"fp>i<"clear">',
        buttons: [{
                extend: 'csv',
                //text: 'CSV',
                text: '<i class="fas fa-file-csv fa-1x"></i> <i>Exportar a CSV</i>',
                title: 'Tabla Datos por Tipo',
                className: 'btn btn-info btn-xs'
            },
            {
                extend: 'excel',
                //text: 'Excel',
                text: '<i class="fas fa-file-excel"></i> <i>Exportar a Excel</i>',
                title: 'Tabla Datos por Tipo',
                className: 'btn btn-info btn-xs'
            },
            {
                extend: 'pdf',
                //text: 'PDF',
                text: '<i class="fas fa-file-pdf fa-1x"></i> <i>Exportar a PDF</i>',
                title: 'Tabla Datos por Tipo',
                className: 'btn btn-info btn-xs'
            },
            {
                extend: 'print',
                //text: 'Imprimir',
                text: '<i class="fas fa-print"></i> <i>Imprimir</i>',
                title: 'Tabla Datos por Tipo',
                className: 'btn btn-info btn-xs'
            }
        ]
    });
    const tableData2 = getTableData(table2);
    createHighchartsXTipo(tableData2);
    setTableEvents(table2, 1);

// TABLA POR CLIENTE
    const table3 = $('#datosXCliente').DataTable({
        'info': true,
        "aaSorting": [[ 1, "desc" ]], 
        "language": {
            "url": "//cdn.datatables.net/plug-ins/1.10.15/i18n/Spanish.json"
        },
        responsive: true,
        dom: '<"top"Blr>t<"bottom"fp>i<"clear">',
        buttons: [{
                extend: 'csv',
                //text: 'CSV',
                text: '<i class="fas fa-file-csv fa-1x"></i> <i>Exportar a CSV</i>',
                title: 'Tabla Datos por Cliente',
                className: 'btn btn-info btn-xs'
            },
            {
                extend: 'excel',
                //text: 'Excel',
                text: '<i class="fas fa-file-excel"></i> <i>Exportar a Excel</i>',
                title: 'Tabla Datos por Cliente',
                className: 'btn btn-info btn-xs'
            },
            {
                extend: 'pdf',
                //text: 'PDF',
                text: '<i class="fas fa-file-pdf fa-1x"></i> <i>Exportar a PDF</i>',
                title: 'Tabla Datos por Cliente',
                className: 'btn btn-info btn-xs'
            },
            {
                extend: 'print',
                //text: 'Imprimir',
                text: '<i class="fas fa-print"></i> <i>Imprimir</i>',
                title: 'Tabla Datos por Cliente',
                className: 'btn btn-info btn-xs'
            }
        ]
    });
    const tableData3 = getTableData(table3);
    createHighchartsXCliente(tableData3);
    setTableEvents(table3, 2);
}



// CREAR GRAFICO DE TORTA, SE LE ENVIA UN ARRAY CON DOS JSON ADENTRO --------- POR TIPO DE RECLAMO
function createHighchartsXTipo(data) {

    const datos = [];
    for (i = 0; i < data[0].length; i++) {
        item = {}
        item ["name"] = data[0][i];
        item ["y"] = parseInt(data[1][i]);

        datos.push(item);
    }

    Highcharts.chart('chartXTipo', {
        chart: {
            plotBackgroundColor: 'rgb(195, 217, 230)',
            plotBorderWidth: null,
            plotShadow: true,
            type: 'pie'
        },
        title: {
            text: 'Reclamos por tipo'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                }
            }
        },
        exporting: {
            buttons: {
                contextButton: {
                    menuItems: [
                        'viewFullscreen',
                        {
                            textKey: 'printChart',
                            text: '<i class="fas fa-print"></i> <i>Imprimir</i>',
                            onclick: function() {
                                this.print();
                            }
                        }, {
                            separator: true
                        }, {
                            textKey: 'downloadPNG',
                            text: '<i class="fas fa-file-image"></i> <i>Descargar como PNG</i>',
                            onclick: function() {
                                this.exportChart();
                            }
                        }, {
                            textKey: 'downloadJPEG',
                            text: '<i class="fas fa-image"></i> <i>Descargar como JPEG</i>',
                            onclick: function() {
                                this.exportChart({
                                    type: 'image/jpeg'
                                });
                            }
                        }, {
                            separator: true
                        }, {
                            textKey: 'downloadPDF',
                            text: '<i class="fas fa-file-pdf"></i> <i>Descargar como PDF</i>',
                            onclick: function() {
                                this.exportChart({
                                    type: 'application/pdf'
                                });
                            }
                        }, {
                            textKey: 'downloadSVG',
                            text: '<i class="fas fa-file-alt"></i> <i>Descargar como SVG</i>',
                            onclick: function() {
                                this.exportChart({
                                    type: 'image/svg+xml'
                                });
                            }
                        }
                    ]
                }
            }
        },
        series: [{
            name: 'Reclamos',
            colorByPoint: true,
            data: datos
        }]
    });
}

// CREAR GRAFICO DE TORTA, SE LE ENVIA UN ARRAY CON DOS JSON ADENTRO --------- POR CLIENTE
function createHighchartsXCliente(data) {

    const datos = [];
    for (i = 0; i < data[0].length; i++) {
        item = {}
        item ["name"] = data[0][i];
        item ["y"] = parseInt(data[1][i]);

        datos.push(item);
    }

    Highcharts.chart('chartXCliente', {
        chart: {
            plotBackgroundColor: 'rgb(195, 217, 230)',
            plotBorderWidth: null,
            plotShadow: true,
            type: 'pie'
        },
        title: {
            text: 'Reclamos por Cliente'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                }
            }
        },
        exporting: {
            buttons: {
                contextButton: {
                    menuItems: [
                        'viewFullscreen',
                        {
                            textKey: 'printChart',
                            text: '<i class="fas fa-print"></i> <i>Imprimir</i>',
                            onclick: function() {
                                this.print();
                            }
                        }, {
                            separator: true
                        }, {
                            textKey: 'downloadPNG',
                            text: '<i class="fas fa-file-image"></i> <i>Descargar como PNG</i>',
                            onclick: function() {
                                this.exportChart();
                            }
                        }, {
                            textKey: 'downloadJPEG',
                            text: '<i class="fas fa-image"></i> <i>Descargar como JPEG</i>',
                            onclick: function() {
                                this.exportChart({
                                    type: 'image/jpeg'
                                });
                            }
                        }, {
                            separator: true
                        }, {
                            textKey: 'downloadPDF',
                            text: '<i class="fas fa-file-pdf"></i> <i>Descargar como PDF</i>',
                            onclick: function() {
                                this.exportChart({
                                    type: 'application/pdf'
                                });
                            }
                        }, {
                            textKey: 'downloadSVG',
                            text: '<i class="fas fa-file-alt"></i> <i>Descargar como SVG</i>',
                            onclick: function() {
                                this.exportChart({
                                    type: 'image/svg+xml'
                                });
                            }
                        }
                    ]
                }
            }
        },
        series: [{
            name: 'Clientes',
            colorByPoint: true,
            data: datos
        }]
    });
}






// SE TRANSFORMA LA INFO DE LA TABLA A JSON
function getTableData(table) {
    const   dataArray = [],
            tipoArray = [],
            cantArray = [];

    table.rows({
        search: "applied"
    }).every(function() {
        const data = this.data();
        tipoArray.push(data[0]);
        cantArray.push(data[1]);
    });

    dataArray.push(tipoArray, cantArray);

    return dataArray;
}

// ACTUALIZA EL GRAFICO CUANDO DETECTA MOVIMIENTO
// TIPO 0 = COMPLETO
// TIPO 1 = X TIPO RECLAMO
// TIPO 2 = X CLIENTE
// TIPO 3 = X PANEL
// TIPO 4 = X NODO
function setTableEvents(table, tipo) {
    table.on("page", () => {
        draw = true;
    });
    table.on("draw", () => {
        if (draw) {
            draw = false;
        } else {
            var tableData;
            if(tipo == 1){
                tableData = getTableData(table);
                createHighchartsXTipo(tableData);
            }
            if(tipo == 2){
                tableData = getTableData(table);
                createHighchartsXCliente(tableData);
            }
            if(tipo == 3){
                tableData = getTableData(table);
                createHighchartsXPanel(tableData);
            }
            if(tipo == 4){
                tableData = getTableData(table);
                createHighchartsXNodo(tableData);
            }
        }
    });
}

// DATEPICKER ESTADISTICAS POR FECHA ESPECIFICA
$('#divFDesde input').datepicker({    
    format: "dd/mm/yyyy",
    todayBtn: "linked",
    language: "es"
});
$('#divFHasta input').datepicker({    
    format: "dd/mm/yyyy",
    todayBtn: "linked",
    language: "es"
});


// FUNCIONALIDADES 
$(document).ready(function(){

    $("#buscarXFecha").click(function() {
      var nodo;
      var intervalo;
  
      nodo = $("#selectPanel").val();
      intervalo = $("#selectIntervalo").val();
      
      if(intervalo == 0) {
        alert("Seleccione una fecha valida");
        return false;
      }else{
        
        $("#buscarXFecha").prop('disabled', true);
        $("#buscarXFecha").html('Buscando');
        $("#buscarXFecha").removeClass("btn btn-info btn-lg").addClass("btn btn-warning btn-lg");

        var url = "/tickets/paginas/estadisticas/exfecha.php";
        var variables = "?nodo="+nodo+"&intervalo="+intervalo;

        window.location.replace(url+variables);
        //console.log(url+variables);
      }
    });	

    $("#buscarXFechaEspecifica").click(function() {
        var desde;
        var hasta;
    
        desde = $("#fechaDesde").val();
        hasta = $("#fechaHasta").val();
        
        if( (desde == '') || (hasta == '') ){
          alert("Seleccione una fecha valida");
          return false;
        }else{
          
          $("#buscarXFechaEspecifica").prop('disabled', true);
          $("#buscarXFechaEspecifica").html('Buscando');
          $("#buscarXFechaEspecifica").removeClass("btn btn-info btn-lg").addClass("btn btn-warning btn-lg");
  
          var url = "/tickets/paginas/estadisticas/exfechaespecifica.php";
          var variables = "?date="+desde+"&date2="+hasta;
  
          window.location.replace(url+variables);
          //console.log(url+variables);
        }
    });	
});

$(function () {
    $('[data-toggle="tooltip"]').tooltip()
  })
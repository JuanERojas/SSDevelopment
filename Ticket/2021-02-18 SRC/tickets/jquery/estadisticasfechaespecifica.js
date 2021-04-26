let draw = false;
init2();

function init2() {
    

// TABLA POR PANEL
const table4 = $('#datosXPanel').DataTable({
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
            title: 'Tabla Datos por Panel',
            className: 'btn btn-info btn-xs'
        },
        {
            extend: 'excel',
            //text: 'Excel',
            text: '<i class="fas fa-file-excel"></i> <i>Exportar a Excel</i>',
            title: 'Tabla Datos por Panel',
            className: 'btn btn-info btn-xs'
        },
        {
            extend: 'pdf',
            //text: 'PDF',
            text: '<i class="fas fa-file-pdf fa-1x"></i> <i>Exportar a PDF</i>',
            title: 'Tabla Datos por Panel',
            className: 'btn btn-info btn-xs'
        },
        {
            extend: 'print',
            //text: 'Imprimir',
            text: '<i class="fas fa-print"></i> <i>Imprimir</i>',
            title: 'Tabla Datos por Panel',
            className: 'btn btn-info btn-xs'
        }
    ]
});
const tableData4 = getTableData(table4);
createHighchartsXPanel(tableData4);
setTableEvents(table4, 3);

// TABLA POR NODO
const table5 = $('#datosXNodo').DataTable({
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
            title: 'Tabla Datos por Nodo',
            className: 'btn btn-info btn-xs'
        },
        {
            extend: 'excel',
            //text: 'Excel',
            text: '<i class="fas fa-file-excel"></i> <i>Exportar a Excel</i>',
            title: 'Tabla Datos por Nodo',
            className: 'btn btn-info btn-xs'
        },
        {
            extend: 'pdf',
            //text: 'PDF',
            text: '<i class="fas fa-file-pdf fa-1x"></i> <i>Exportar a PDF</i>',
            title: 'Tabla Datos por Nodo',
            className: 'btn btn-info btn-xs'
        },
        {
            extend: 'print',
            //text: 'Imprimir',
            text: '<i class="fas fa-print"></i> <i>Imprimir</i>',
            title: 'Tabla Datos por Nodo',
            className: 'btn btn-info btn-xs'
        }
    ]
});
const tableData5 = getTableData(table5);
createHighchartsXNodo(tableData5);
setTableEvents(table5, 4);

// TABLA POR PANEL Y RECLAMO
const table6 = $('#datosXPanelYReclamo').DataTable({
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
                title: 'Tabla Datos por Panel y Reclamo',
                className: 'btn btn-info btn-xs'
            },
            {
                extend: 'excel',
                //text: 'Excel',
                text: '<i class="fas fa-file-excel"></i> <i>Exportar a Excel</i>',
                title: 'Tabla Datos por Panel y Reclamo',
                className: 'btn btn-info btn-xs'
            },
            {
                extend: 'pdf',
                //text: 'PDF',
                text: '<i class="fas fa-file-pdf fa-1x"></i> <i>Exportar a PDF</i>',
                title: 'Tabla Datos por Panel y Reclamo',
                className: 'btn btn-info btn-xs'
            },
            {
                extend: 'print',
                //text: 'Imprimir',
                text: '<i class="fas fa-print"></i> <i>Imprimir</i>',
                title: 'Tabla Datos por Panel y Reclamo',
                className: 'btn btn-info btn-xs'
            }
        ]
    });
}

// CREAR GRAFICO DE TORTA, SE LE ENVIA UN ARRAY CON DOS JSON ADENTRO --------- POR PANEL
function createHighchartsXPanel(data) {

    const datos = [];
    for (i = 0; i < data[0].length; i++) {
        item = {}
        item ["name"] = data[0][i];
        item ["y"] = parseInt(data[1][i]);

        datos.push(item);
    }

    Highcharts.chart('chartXPanel', {
        chart: {
            plotBackgroundColor: 'rgb(195, 217, 230)',
            plotBorderWidth: null,
            plotShadow: true,
            type: 'pie'
        },
        title: {
            text: 'Reclamos por Panel'
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
            name: 'Paneles',
            colorByPoint: true,
            data: datos
        }]
    });
}

// CREAR GRAFICO DE TORTA, SE LE ENVIA UN ARRAY CON DOS JSON ADENTRO --------- POR NODO
function createHighchartsXNodo(data) {

    const datos = [];
    for (i = 0; i < data[0].length; i++) {
        item = {}
        item ["name"] = data[0][i];
        item ["y"] = parseInt(data[1][i]);

        datos.push(item);
    }

    Highcharts.chart('chartXNodo', {
        chart: {
            plotBackgroundColor: 'rgb(195, 217, 230)',
            plotBorderWidth: null,
            plotShadow: true,
            type: 'pie'
        },
        title: {
            text: 'Reclamos por Nodo'
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
            name: 'Nodos',
            colorByPoint: true,
            data: datos
        }]
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
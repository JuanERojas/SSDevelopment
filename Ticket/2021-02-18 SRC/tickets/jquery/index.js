$(document).ready(function(){

  $("#insertarReclamo").click(function() {
    var numCliente;
    var nombrePanel;
    var tecnico;

    numCliente = $("#codCliente").val();
    nombrePanel = $("#nombrePanel").val();
    tecnico = $("#tecnico").val();
    
    checked = $("input[type=checkbox]:checked").length;

    if(!checked) {
      alert("Seleccione al menos un tipo de reclamo.");
      return false;
    }else{
      
      $("#insertarReclamo").prop('disabled', true);
      $("#insertarReclamo").html('Listo');
      $("#insertarReclamo").removeClass("btn btn-success btn-lg").addClass("btn btn-warning btn-lg");

      $('input[type=checkbox]:checked').each(function() {
        console.log("ENTRA al click");
        
        $.ajax({
              type: "POST",
              url: "/tickets/paginas/funciones/cargarReclamo.php",
              data: "tecnico="+tecnico+"&nombrePanel="+nombrePanel+"&reclamo="+($(this).val())+"&numCliente="+numCliente,
              dataType: "html",
              beforeSend: function(){
              $("#contenido").html("<p align='center'><img src='img/ajax-loader.gif' /></p>");
              },
              error: function(){
                alert("Error petición ajax");
              },
              success: function(data) {
                $("#contenido").empty();
                $("#contenido").html(data);
              },
              error: function() {
                $("#contenido").empty();
                $("#contenido").html(
                  '<div class="alert alert-danger text-center" role="alert"> Error al procesar la petición </div>'
                );
              }
            });
      });
    }
    
    // $("#contenido").empty();
    // $("#contenido").append("<p>Reclamo cargado</p>");
  });	
  
  
    //------------------MODAL RESULTADO
    $('#mdExito').on('hidden.bs.modal', function() {
      location.reload();
    }); 
    $('#mdError').on('hidden.bs.modal', function() {
      location.reload();
    });

});

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
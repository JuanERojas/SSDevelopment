$(document).ready(function(){
		var numCliente;
		var nombrePanel;
		var reclamo;
        var tecnico;
        $("#submit").click(function() {
			numCliente = $("#codCliente").val();
			nombrePanel = $("#nombrePanel").val();
			reclamo = $("#reclamo").val();
			tecnico = $("#tecnico").val();
			if(numCliente!=0){ 
				$.ajax({
						type: "POST",
						url: "cargarReclamo.php",
						data: "tecnico="+tecnico+"&nombrePanel="+nombrePanel+"&reclamo="+reclamo+"&numCliente="+numCliente,
						dataType: "html",
						beforeSend: function(){
						$("#result").html("<p align='center'><img src='ajax-loader.gif' /></p>");
						},
						error: function(){
							alert("Error petición ajax");
						},
						success: function(data){                                                    
							$("#result").empty();
							if(data.includes("Error")){
								alert("Error al cargar el cliente");
							}else{
								alert("Reclamo cargado");
							}
						}
				  });
			  }
		});		
});
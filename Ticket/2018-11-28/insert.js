$(document).ready(function(){
		var numCliente;
		var nombrePanel;
		var reclamo;
        var tecnico;
        $("#submit").click(function() {
			numCliente = $("#codCliente").val();
			nombrePanel = $("#nombrePanel").val();
			//reclamo = $("#reclamo").val();
			tecnico = $("#tecnico").val();
			
			checked = $("input[type=checkbox]:checked").length;

			if(!checked) {
				alert("Seleccione al menos un tipo de reclamo.");
				return false;
			}else{
				$('input[type=checkbox]:checked').each(function() {
					//alert($(this).val());
					//alert("tecnico="+tecnico+"&nombrePanel="+nombrePanel+"&reclamo="+($(this).val())+"&numCliente="+numCliente);
					
					$.ajax({
								type: "POST",
								url: "cargarReclamo.php",
								data: "tecnico="+tecnico+"&nombrePanel="+nombrePanel+"&reclamo="+($(this).val())+"&numCliente="+numCliente,
								dataType: "html",
								beforeSend: function(){
								$("#result").html("<p align='center'><img src='ajax-loader.gif' /></p>");
								},
								error: function(){
									alert("Error petición ajax");
								},
								success: function(data){                                                    
									//$("#result").empty();
									if(data.includes("Error")){
										alert("Error al cargar el cliente");
									}else{
										//alert(data);
									}
								}
						  });
						  
				});
			}
			
			$("#result").empty();
			$("#result").append("<p>Reclamo cargado</p>");
		});		
});
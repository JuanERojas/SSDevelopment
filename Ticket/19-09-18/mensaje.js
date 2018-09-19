$(document).ready(function(){
		var mensaje;
        $("#submit").click(function() {
			mensaje = $('#mensaje').text();
			//$('#details').html();
			alert("Error petición ajax");
			$.ajax({
				type: "POST",
							url: "mensaje.php",
							data: "mensaje="+mensaje,
							dataType: "html",
							beforeSend: function(){
								$("#result").html("<p align='center'></p>");
							},
							error: function(){
								alert("Error petición ajax");
							},
							success: function(data){                                                    
								//$("#result").empty();
								if(data.includes("Error")){
									alert("Error al guardar");
								}else{
									//alert(data);
								}
							}
					});
		//$("#result").empty();
		//$("#result").append("<p>Reclamo cargado</p>");
		});		
});
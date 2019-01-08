$(document).ready(function(){
        var codTicketjs;
        var codEstadojs;
		
		$("#submit").click(function() {
			codTicketjs = $("#codTicket").val();
			codEstadojs = $("#codEstado").val();
			
			if( codTicketjs!=0 && (!isNaN(codTicketjs)) && (!isNaN(codEstadojs)) && codEstadojs!=0 ){
				
				$.ajax({
						type: "POST",
						url: "modificarTicket.php",
						data: "codEstado="+codEstadojs+"&codTicket="+codTicketjs,
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
								alert("Error al cargar el Ticket");
							}else{
								alert("Ticket cargado");
							}
						}
				  });
			}
		});
});
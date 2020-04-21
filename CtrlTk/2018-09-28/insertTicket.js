$(document).ready(function(){
		var codClientejs;
        var codTicketjs;
        var codTecnicojs;
		
		$("#submit").click(function() {
			codClientejs = $("#codCliente").val();
			codTicketjs = $("#codTicket").val();
			codTecnicojs = $("#codTecnico").val();
			
			if(codClientejs!=0 && codTicketjs!=0 && (!isNaN(codClientejs)) && (!isNaN(codTicketjs)) && (!isNaN(codTecnicojs)) && codTecnicojs!=0){
				
				$.ajax({
						type: "POST",
						url: "cargarTicket.php",
						data: "codCliente="+codClientejs+"&codTicket="+codTicketjs+"&codTecnico="+codTecnicojs,
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
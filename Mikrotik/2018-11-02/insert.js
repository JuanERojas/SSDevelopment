$(document).ready(function(){
        var clientejs;
		var codClientejs;
		var ipClientejs;
		if(codNapjs!=0 && codClientejs!=0){
			$("#submit").click(function() {
				clientejs = $("#cliente").val();
				codClientejs = $("#codCliente").val();
				ipClientejs = $("#ipCliente").val();
				
				$.ajax({
						type: "POST",
						url: "cargarIP.php",
						data: "nom="+clientejs+"&cl="+codClientejs+"&ip="+ipClientejs,
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
								alert("Error al cargar la IP");
							}else{
								alert("IP cargada");
							}
						}
				  });
			});	
		}
});
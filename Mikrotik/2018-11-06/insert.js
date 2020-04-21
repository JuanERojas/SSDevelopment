$(document).ready(function(){
        var clientejs;
		var codClientejs;
		var ipClientejs;
		
		$("#submit").click(function() {
			clientejs = $("#cliente").val();
			codClientejs = $("#codCliente").val();
			ipClientejs = $("#ipCliente").val();
			if(clientejs!=0 && codClientejs!=0 && ipClientejs!=0){
				
				$.ajax({
					type: "POST",
					url: "cargarIP.php",
					data: "nombre="+clientejs+"&cl="+codClientejs+"&ip="+ipClientejs,
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
							$(location).attr('href', 'buscar.php')
						}
					}
				  });
			}
		});	
});
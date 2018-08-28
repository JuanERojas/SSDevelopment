$(document).ready(function(){
        var codNapjs;
		var codClientejs;
        $("#submit").click(function() {
			codNapjs = $("#codNap").val();
			codClientejs = $("#codCliente").val();
			
			$.ajax({
                    type: "POST",
                    url: "cargarCliente.php",
                    data: "codNap="+codNapjs+"&codCliente="+codClientejs,
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
							alert("Cliente cargado");
						}
                    }
              });
		});		
});
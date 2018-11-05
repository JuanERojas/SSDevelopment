$(document).ready(function(){
        var commentjs;
		var ipClientejs;
		var comment2js;
		
		$("#submit").click(function() {
			commentjs = $("#comment").val();
			ipClientejs = $("#ipCliente").val();
			comment2js = $("#comment2").val();
			if(commentjs!=0 && comment2js!=0 && ipClientejs!=0){
				
				$.ajax({
					type: "POST",
					url: "modificarIP.php",
					data: "cm="+commentjs+"&ip="+ipClientejs+"&old="+comment2js,
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
							alert("Error al modificar la IP");
						}else{
							alert("IP modificada");
							$(location).attr('href', 'buscar.php')
						}
					}
				  });
			}
		});	
});
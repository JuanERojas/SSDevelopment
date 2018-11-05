$(document).ready(function(){
		var comment2js;
		
		$("#submit2").click(function() {
			comment2js = $("#comment2").val();
			if(comment2js!=0){
				
				$.ajax({
					type: "POST",
					url: "eliminarIP.php",
					data: "old="+comment2js,
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
							alert("Error al eliminar la IP");
						}else{
							alert("IP eliminada");
							$(location).attr('href', 'buscar.php')
						}
					}
				  });
			}
		});	
});
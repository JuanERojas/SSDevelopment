$(document).ready(function(){
        var codPon;
        var iniNap;
        var finNap;
/*		if(codPon!=0 && iniNap!=0 && finNap!=0){
			$("#submit").click(function() {
				codPon = $("#codPon").val();
				iniNap = $("#iniNap").val();
				finNap = $("#finNap").val();
				
				$.ajax({
						type: "POST",
						url: "cargarNap.php",
						data: "codPon="+codPon+"&iniNap="+iniNap+"&finNap="+finNap,
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
								alert("Error al cargar Los NAP");
							}else{
								alert("NAP cargado");
							}
						}
				  });
			});
		}*/
});
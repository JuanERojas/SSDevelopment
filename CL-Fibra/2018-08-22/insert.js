$(document).ready(function(){
        var codPonjs;
		var nomPonjs;
		var numCajajs;
		var codClientejs;
                                                                                                     
        //OnClick del btn
        $("#submit").click(function() {
			//alert( "Handler for .click() called." );
			codPonjs = $("#codPon").val();
			nomPonjs = "TEST";
			numCajajs = $("#numCaja").val();
			codClientejs = $("#codCliente").val();
			
			//alert( codPonjs+"-"+nomPonjs+"-"+numCajajs+"-"+codClientejs );
			
			$.ajax({
                    type: "POST",
                    url: "cargarCliente.php",
                    data: "codPon="+codPonjs+"&nomPon="+nomPonjs+"&numCaja="+numCajajs+"&codCliente="+codClientejs,
                    dataType: "html",
                    beforeSend: function(){
                    //imagen de carga
                    $("#result").html("<p align='center'><img src='ajax-loader.gif' /></p>");
                    },
                    error: function(){
						alert("error petición ajax");
                    },
                    success: function(data){                                                    
						//$("#result").empty();
						//$("#result").append(data); 
						alert("Cliente cargado");						
                    }
              });
			
			/*
			// Enviar datos usando post
			var param;
			//param = "codPon="+codPonjs+", "+consulta;
			param = { codPon: codPonjs, nomPon : nomPonjs, numCaja : numCajajs, codCliente : codClientejs};
			var posting = $.post( "cargarCliente.php",  param);
			
			//Ver resultados
		//	posting.done(function( data ) {
		//		alert( "Data Loaded: " + data );
		//	});
			
			posting.done(function( data ) {
				$( "#result" ).empty().append( data );
			});
			*/
		});		
});
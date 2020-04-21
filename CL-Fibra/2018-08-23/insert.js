$(document).ready(function(){
        var codNapjs;
		var codClientejs;
                                                                                                     
        //OnClick del btn
        $("#submit").click(function() {
			//alert( "Handler for .click() called." );
			codNapjs = $("#codNap").val();
			codClientejs = $("#codCliente").val();
			
			//alert( "codNap="+codNapjs+"&codCliente="+codClientejs );
			
			$.ajax({
                    type: "POST",
                    url: "cargarCliente.php",
                    data: "codNap="+codNapjs+"&codCliente="+codClientejs,
                    dataType: "html",
                    beforeSend: function(){
                    //imagen de carga
                    $("#result").html("<p align='center'><img src='ajax-loader.gif' /></p>");
                    },
                    error: function(){
						alert("error petición ajax");
                    },
                    success: function(data){                                                    
						$("#result").empty();
						$("#result").append(data); 
						//alert("Cliente cargado");						
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
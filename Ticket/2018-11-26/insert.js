$(document).ready(function(){
		var numCliente;
		var nombrePanel;
		var reclamo;
        var tecnico;
        $("#submit").click(function() {
			numCliente = $("#codCliente").val();
			nombrePanel = $("#nombrePanel").val();
			//reclamo = $("#reclamo").val();
			tecnico = $("#tecnico").val();
			
			checked = $("input[type=checkbox]:checked").length;

			if(!checked) {
				alert("Seleccione al menos un tipo de reclamo.");
				return false;
			}	
			if(numCliente!=0 && (!isNaN(numCliente))){ 
				if($("#reclamo-1").is(":checked")){
					//alert("Reclamo1.");
					//return false;
					reclamo = $("#reclamo-1").val();
					$.ajax({
							type: "POST",
							url: "cargarReclamo.php",
							data: "tecnico="+tecnico+"&nombrePanel="+nombrePanel+"&reclamo="+reclamo+"&numCliente="+numCliente,
							dataType: "html",
							beforeSend: function(){
							$("#result").html("<p align='center'><img src='ajax-loader.gif' /></p>");
							},
							error: function(){
								alert("Error petición ajax");
							},
							success: function(data){                                                    
								//$("#result").empty();
								if(data.includes("Error")){
									alert("Error al cargar el cliente");
								}else{
									//alert(data);
								}
							}
					  });
				}
				
				// Reclamo2 -- Microcortes (solo tecnicos)
				if($("#reclamo-2").is(":checked")){
					//alert("Reclamo2.");
					//return false;
					reclamo = $("#reclamo-2").val();
					$.ajax({
							type: "POST",
							url: "cargarReclamo.php",
							data: "tecnico="+tecnico+"&nombrePanel="+nombrePanel+"&reclamo="+reclamo+"&numCliente="+numCliente,
							dataType: "html",
							beforeSend: function(){
							$("#result").html("<p align='center'><img src='ajax-loader.gif' /></p>");
							},
							error: function(){
								alert("Error petición ajax");
							},
							success: function(data){                                                    
								//$("#result").empty();
								if(data.includes("Error")){
									alert("Error al cargar el cliente");
								}else{
									//alert("Reclamo cargado");
								}
							}
					  });
				}
				
				if($("#reclamo-3").is(":checked")){
					//alert("Reclamo3.");
					//return false;
					reclamo = $("#reclamo-3").val();
					$.ajax({
							type: "POST",
							url: "cargarReclamo.php",
							data: "tecnico="+tecnico+"&nombrePanel="+nombrePanel+"&reclamo="+reclamo+"&numCliente="+numCliente,
							dataType: "html",
							beforeSend: function(){
							$("#result").html("<p align='center'><img src='ajax-loader.gif' /></p>");
							},
							error: function(){
								alert("Error petición ajax");
							},
							success: function(data){                                                    
								//$("#result").empty();
								if(data.includes("Error")){
									alert("Error al cargar el cliente");
								}else{
									//alert("Reclamo cargado");
								}
							}
					  });
				}
				if($("#reclamo-4").is(":checked")){
					//alert("Reclamo4.");
					//return false;
					reclamo = $("#reclamo-4").val();
					$.ajax({
							type: "POST",
							url: "cargarReclamo.php",
							data: "tecnico="+tecnico+"&nombrePanel="+nombrePanel+"&reclamo="+reclamo+"&numCliente="+numCliente,
							dataType: "html",
							beforeSend: function(){
							$("#result").html("<p align='center'><img src='ajax-loader.gif' /></p>");
							},
							error: function(){
								alert("Error petición ajax");
							},
							success: function(data){                                                    
								//$("#result").empty();
								if(data.includes("Error")){
									alert("Error al cargar el cliente");
								}else{
									//alert("Reclamo cargado");
								}
							}
					  });
				}
				
				// Reclamo5 -- WhatsApp
				if($("#reclamo-5").is(":checked")){
					//alert("Reclamo5.");
					//return false;
					reclamo = $("#reclamo-5").val();
					$.ajax({
							type: "POST",
							url: "cargarReclamo.php",
							data: "tecnico="+tecnico+"&nombrePanel="+nombrePanel+"&reclamo="+reclamo+"&numCliente="+numCliente,
							dataType: "html",
							beforeSend: function(){
							$("#result").html("<p align='center'><img src='ajax-loader.gif' /></p>");
							},
							error: function(){
								alert("Error petición ajax");
							},
							success: function(data){                                                    
								//$("#result").empty();
								if(data.includes("Error")){
									alert("Error al cargar el cliente");
								}else{
									//alert("Reclamo cargado");
								}
							}
					  });
				}
				/*
				$.ajax({
						type: "POST",
						url: "cargarReclamo.php",
						data: "tecnico="+tecnico+"&nombrePanel="+nombrePanel+"&reclamo="+reclamo+"&numCliente="+numCliente,
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
								//alert("Reclamo cargado");
							}
						}
				  });
				  */
				//$("#codCliente").val("-");
				//$("#nombrePanel").val("-");
				$("#result").empty();
				$("#result").append("<p>Reclamo cargado</p>");
				//alert("Reclamo cargado");
			  }
		});		
});
$(document).ready(function(){
	/*
	$("input:checkbox").on('click', function() {
	var $box = $(this);
	  if ($box.is(":checked")) {
		// the name of the box is retrieved using the .attr() method
		// as it is assumed and expected to be immutable
		var group = "input:checkbox[name='" + $box.attr("name") + "']";
		// the checked state of the group/box on the other hand will change
		// and the current value is retrieved using .prop() method
		$(group).prop("checked", false);
		$box.prop("checked", true);
	  } else {
		$box.prop("checked", false);
	  }
	});
	*/
	
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
			if(numCliente!=0){ 
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
								$("#result").empty();
								if(data.includes("Error")){
									alert("Error al cargar el cliente");
								}else{
									//alert("Reclamo cargado");
								}
							}
					  });
				}
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
								$("#result").empty();
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
								$("#result").empty();
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
								$("#result").empty();
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
				  alert("Reclamo cargado");
			  }
		});		
});
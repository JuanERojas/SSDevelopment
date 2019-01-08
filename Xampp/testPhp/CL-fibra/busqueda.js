$(document).ready(function(){
        var consulta;
        //hacemos focus al campo de búsqueda
        $("#busqueda").focus();
                                                                                                     
        //comprobamos si se pulsa una tecla
        $("#busquedaXcl").keyup(function(e){
                                      
              //obtenemos el texto introducido en el campo de búsqueda
              consulta = $("#busquedaXcl").val();
              //hace la búsqueda                                                                                  
              $.ajax({
                    type: "POST",
                    url: "busqueda.php",
                    data: "bcl="+consulta,
                    dataType: "html",
                    beforeSend: function(){
                    //imagen de carga
                    $("#resultado").html("<p align='center'><img src='ajax-loader.gif' /></p>");
                    },
                    error: function(){
                    alert("error petición ajax");
                    },
                    success: function(data){                                                    
                    $("#resultado").empty();
                    
					$("#resultado").append(data);   
                    //$("#resultado").html("<table>"+data+"</table>");                                                          
                    }
              });
			$("#busquedaXnap").val("");	
			$("#busquedaXpon").val("");                                                                         
        });

		$("#busquedaXpon").keyup(function(e){
                                      
              //obtenemos el texto introducido en el campo de búsqueda
              consulta = $("#busquedaXpon").val();
              //hace la búsqueda                                                                                  
              $.ajax({
                    type: "POST",
                    url: "busqueda.php",
                    data: "bpon="+consulta,
                    dataType: "html",
                    beforeSend: function(){
                    //imagen de carga
                    $("#resultado").html("<p align='center'><img src='ajax-loader.gif' /></p>");
                    },
                    error: function(){
                    alert("error petición ajax");
                    },
                    success: function(data){                                                    
                    $("#resultado").empty();
                    
					$("#resultado").append(data);   
                    //$("#resultado").html("<table>"+data+"</table>");                                                          
                    }
              });
			$("#busquedaXnap").val("");	
			$("#busquedaXcl").val("");
        });
		
		$("#busquedaXnap").keyup(function(e){
                                      
              //obtenemos el texto introducido en el campo de búsqueda
              consulta = $("#busquedaXnap").val();
              //hace la búsqueda                                                                                  
              $.ajax({
                    type: "POST",
                    url: "busqueda.php",
                    data: "bnap="+consulta,
                    dataType: "html",
                    beforeSend: function(){
                    //imagen de carga
                    $("#resultado").html("<p align='center'><img src='ajax-loader.gif' /></p>");
                    },
                    error: function(){
                    alert("error petición ajax");
                    },
                    success: function(data){                                                    
                    $("#resultado").empty();
                    
					$("#resultado").append(data);   
                    //$("#resultado").html("<table>"+data+"</table>");                                                          
                    }
              });
			$("#busquedaXcl").val("");	
			$("#busquedaXpon").val("");                                                                         
        });
});
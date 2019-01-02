<html>
<?php
	//echo 'Buscador<br>';
?>
<head>
	<title>Buscar</title>
	<link rel="shortcut icon" href="busbar.png"/>
<style type="text/css"> 
	#load{
		width:100%;
		height:100%;
		position:fixed;
		z-index:9999;
	}
	input[type=text] {
		border-radius: 5px;
		border: 1px solid #39c;
		outline: none;
	}
	.linea {
		background-color:transparent;
	}	
	.linea:hover {
		background-color:transparent;
	}
	.button {
		background-color: #4C72AF; /* Blue */
		border: none;
		color: white;
		padding: 10px 32px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
		cursor: pointer;
	}
	hr{
		border: 0;
		height: 1px;
		background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
	}
</style>
<script>
document.onreadystatechange = function () {
  var state = document.readyState
  if (state == 'interactive') {
       document.getElementById('contents').style.visibility="hidden";
  } else if (state == 'complete') {
      setTimeout(function(){
         document.getElementById('interactive');
         document.getElementById('load').style.visibility="hidden";
         document.getElementById('contents').style.visibility="visible";
      },1000);
  }
}
</script>
</head>
<body bgcolor="90A0D5">
	<div align="center">
		<h1>SSServicios v0.03</h1>
		<h2>Buscar En los Cores<h2>
		<h4>
		<br>
	</div>
	<br>
	<hr>
	<br>
	<div align="center">
		<div id="load">
			<img src='Eclipse-2.5s-200px.gif' />
		</div>
		<!--iframe src="cargarDatos.php" height="200" width="500" style="display:none"></iframe-->
		<div id="contents">
			<INPUT TYPE = "Text" NAME = "b1" id="b1" width="100">
			<br>
			<br>
			<br>
			<button class="button"  onclick="actualizar();" align="center" id="buscar">Buscar</button>
		</div>
	</div>
	
<script>
function actualizar(){
	var bus = document.getElementById("b1").value;
	window.open('resultados.php?bus='+bus);
}

var input = document.getElementById("b1"); // Get the input field

input.addEventListener("keyup", function(event) { // Execute a function when the user releases a key on the keyboard
  event.preventDefault(); // Cancel the default action, if needed
  if (event.keyCode === 13) { // Number 13 is the "Enter" key on the keyboard
    document.getElementById("buscar").click(); // Trigger the button element with a click
  }
});
</script>
</body>
</html>



	


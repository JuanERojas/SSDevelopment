<?php

?>
<html>
<head>
<style>
    
<style type="text/css"> 
	h1 {
		font-size: 2em;
		margin-bottom: 0.2em;
		padding-bottom: 0;
	}
	p {
		font-size: 1.5em;
		margin-top: 0;
		padding-top: 0;
	}
	#page {
		display: none;
	}
	#loading {
		display: block;
		position: absolute;
		top: 0;
		left: 0;
		z-index: 100;
		width: 100vw;
		height: 100vh;
		background-color: rgba(192, 192, 192, 0.5);
		background-image: url("Preloader_2.gif");
		background-repeat: no-repeat;
		background-position: center;
	}
</style>
	
</head>
<?php
sleep(5);
echo 'TEST';
?>
<body>
	<div id="page">
     <!--iframe src="test1.php" height="200" width="500"></iframe></div-->
	<div id="loading"></div>
<script>
	function onReady(callback) {
		var intervalID = window.setInterval(checkReady, 1000);

		function checkReady() {
			if (document.getElementsByTagName('body')[0] !== undefined) {
				window.clearInterval(intervalID);
				callback.call(this);
			}
		}
	}

	function show(id, value) {
		document.getElementById(id).style.display = value ? 'block' : 'none';
	}

	onReady(function () {
		show('page', true);
		show('loading', false);
	});
</script>
</body>
</html>
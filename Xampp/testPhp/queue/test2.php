<?php

?>
<html>
<head>
<style>
    
<style type="text/css"> 
	#page{
        diplay:none;
    }
    #loading{
        display:block;
    }
</style>
<script>
    function myFunction(){
		setTimeout(function(){
			document.getElementById("loading").innerHTML=" ";
		}, 2000);
        document.getElementById("page").style.display = "block";
        document.getElementById("loading").style.diplay = "none";
    }
</script>
</head>
<body>
	
	<div id="page"  onload="myFunction()">
<?php
	sleep(2);
?>
    </div>
    <div id="loading">
		<img src='Preloader_2.gif' />
    </div>
<script>
/*	function onReady(callback) {
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
	*/
</script>
</body>
</html>


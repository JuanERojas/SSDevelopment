<?php

?>
<html>
<head>
<style>
    
<style type="text/css"> 
#load{
    width:100%;
    height:100%;
    position:fixed;
    z-index:9999;
    background:url("https://www.creditmutuel.fr/cmne/fr/banques/webservices/nswr/images/loading.gif") no-repeat center center rgba(0,0,0,0.25)
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
<body>
    <div id="load">
		<img src='Preloader_2.gif' />
	</div>
	<iframe src="test1.php" height="200" width="500"></iframe></div>
    <div id="contents">
          jlkjjlkjlkjlkjlklk
    </div>
</body>
</html>


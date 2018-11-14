<?php 
	//phpinfo(); 
	print_r(get_loaded_extensions());
	if (extension_loaded('SNMP')) {
		echo '<br> ----';
    }

?>
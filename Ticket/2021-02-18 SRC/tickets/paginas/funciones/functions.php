<?php


// Metodo comprobar si es de fibra	
function ip_pertenece ($ipcomp, $ipmasc, $rangmasc){

	$pertenece = true;

	$r_addr = $ipmasc;
	$r_mask = $rangmasc;

	$results = array();

	$addr_parts = explode('.', $r_addr);
	$masks = explode(',', $r_mask);

	if(sizeof($addr_parts) < 4){
		die('Direccion de red incorrecta');
	}

	foreach($addr_parts as $part){
		if(!is_numeric($part) || $part < 0 || $part > 255){
			die('Direccion de red incorrecta');
		}
	}

	asort($masks);
	$next_addr = $addr_parts;

	foreach($masks as $mask){
		if(!is_numeric($mask) || $mask < 10 || $mask > 32){
			die("Mascara de red incorrecta: $mask");
		}

		$subnet = array(
			'addr' 		=> '',
			'mask' 		=> '',
			'bit_mask'	=> '',
			'host_min'	=> '',
			'host_max'	=> '',
			'broadcast'	=> '',
			'wildcard'	=> ''
		);

		$subnet['addr'] = implode('.', $next_addr);
		$current_addr = $next_addr;

		$mask_octets = array();
		$wilcard_octets = array();

		$binary_mask = chunk_split(str_pad(str_pad('', $mask, '1', STR_PAD_LEFT), 32, '0', STR_PAD_RIGHT), 8, '.');
		$subnet['bit_mask'] = $binary_mask;

		for($i = 1; $i <= 4; $i++){
			if($mask >= $i * 8){
				$mask_octets[$i - 1] = 255;
				$wilcard_octets[$i - 1] = 0;
			}else{
				$bits_on = substr_count($binary_mask, '1') - (($i - 1) * 8);
				$bits_on = $bits_on < 0 ? 0 : $bits_on;
				$mask_octets[$i - 1] = bindec(str_pad(str_pad('', $bits_on, '1', STR_PAD_LEFT), 8, '0', STR_PAD_RIGHT));
				$wilcard_octets[$i - 1] = 255 - $mask_octets[$i - 1];

				$bits_off = 8 - $bits_on;
				$max_octet_value = bindec(str_pad('', $bits_off, '1', STR_PAD_LEFT));
				$next_addr[$i - 1] += $max_octet_value;
			}
		}

		$current_addr[FOURTH_OCTET] += 1;

		$subnet['host_min'] = implode('.', $current_addr);

		$current_addr = $next_addr;
		$current_addr[FOURTH_OCTET] -= 1;

		$subnet['host_max'] = implode('.', $current_addr);

		
		$ipb = ip2long($ipcomp);
		$ipinf = ip2long($subnet['host_min']);
		$ipsup = ip2long($subnet['host_max']);

		if(($ipb < $ipinf)){
			$pertenece = false;
		}
		if(($ipb > $ipsup)){
			$pertenece = false;
		}

		return $pertenece;
	}
}

function endswith($string, $test) {
    $strlen = strlen($string);
    $testlen = strlen($test);
    if ($testlen > $strlen) return false;
    return substr_compare($string, $test, $strlen - $testlen, $testlen) === 0;
}

?>
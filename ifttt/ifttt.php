<?php

	$nombre = $_REQUEST['nombre'];
	$telefono = $_REQUEST['telefono'];

	// Se conecta a IFTTT y manda el SMS
	
	// curl -X POST -H "Content-Type: application/json" -d '{"value1":"3017516045","value2":"Tote"}' 
	// https://maker.ifttt.com/trigger/notificar_registro/with/key/EpUT3YUfuSppw5SgNNBwlV6A069QdI5Z-ZBmzagrEQ

	//API URL
	$url_ifttt = 'https://maker.ifttt.com/trigger/enviar_sms/with/key/cXiwK9tDXXUFSgdHvNR2_U';

	//create a new cURL resource
	$ch_ifttt = curl_init($url_ifttt);

	//setup request to send json via POST
	$data_ifttt = array(
		'value1' => $telefono,
		'value2' => $nombre,
		'value3' => ''
	);
	$payload_ifttt = json_encode($data_ifttt);

	//attach encoded JSON string to the POST fields
	curl_setopt($ch_ifttt, CURLOPT_POSTFIELDS, $payload_ifttt);

	//set the content type to application/json
	curl_setopt($ch_ifttt, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));

	//return response instead of outputting
	curl_setopt($ch_ifttt, CURLOPT_RETURNTRANSFER, true);

	//execute the POST request
	$result = curl_exec($ch_ifttt);

	//close cURL resource
	curl_close($ch_ifttt);
	
?>
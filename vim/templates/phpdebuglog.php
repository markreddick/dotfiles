<?php

function dlog($msg, $data = '')
{
	$file = '/home/mreddick/mer_php.log';
	
	if (is_bool($data)) {
		if ($data == true) {
			$data = 'true';
		} else {
			$data = 'false';
		}
	}

	if ($data == '') {
		$data = $msg;
		$msg = null;
	}

	if (empty($data)) {
		$data = '[null]';
	}

	if (is_array($data) || is_object($data)) {
		$data = print_r($data, true);
	}

	$output = "\n" . date('H:i:s') . ' - ';
	if (!empty($msg)) {
		$output .=  $msg . ' - ';
	}
	$output .= $data;

	// if the log file gets too large, we'll clear it out first
	if (filesize($file) > 200000) {
		file_put_contents($file, '');
	}

	file_put_contents($file, "\n" . date('H:i:s') . ' - ', FILE_APPEND);
	if (!empty($msg)) {
		file_put_contents($file, $msg . ' - ', FILE_APPEND);
	}
	file_put_contents($file, $data, FILE_APPEND);
}
?>

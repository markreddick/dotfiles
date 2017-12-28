<?php

function dlog($msg, $data = '')
{
	static $last_back_file = '';

	$back = debug_backtrace(DEBUG_BACKTRACE_IGNORE_ARGS, 1);

	$back_file = isset($back[0]['file']) ? $back[0]['file'] : '';
	$back_line = isset($back[0]['line']) ? $back[0]['line'] : '';

	if ($last_back_file != $back_file) {
		$last_back_file = $back_file;

		if (strlen($back_file) > 0) {
			$back_file_segments = explode('/', $back_file);
			if (count($back_file_segments) > 3) {
				$back_file =  array_pop($back_file_segments);
				$back_file = '/' . $back_file;
				$back_file = array_pop($back_file_segments) . $back_file;
				$back_file = '/' . $back_file;
				$back_file = '.../' . array_pop($back_file_segments) . $back_file;
			}
		}
	} else {
		$back_file = '';
	}

	$file = '/home/mreddick/mer_php.log';
	
	if (is_bool($data)) {
		if ($data == true) {
			$data = 'true';
		} else {
			$data = 'false';
		}
	}

	if (!isset($data)) {
		$data = $msg;
		$msg = null;
	}

	if (is_null($data)) {
		$data = '[null]';
	}

	if (is_array($data) || is_object($data)) {
		$data = print_r($data, true);
	}

	$output = "\n";

	if (strlen($back_file) > 0) {
		$output = "\n\n" . date('H:i:s');
		$output .= ' - ' . $back_file . "\n";

	}
	$output .= "  " . $back_line . ' - ';

	if (!empty($msg)) {
		$output .=  $msg . ' - ';
	}
	$output .= $data;

	// if the log file gets too large, we'll clear it out first
	if (filesize($file) > 200000) {
		file_put_contents($file, '');
	}

	file_put_contents($file, $output, FILE_APPEND);	
}
?>

<?php

$last_secs;

function tlog($msg, $data = '')
{
	dlog($msg, $data, true, 1);
}

function dlog($msg, $data = '', $show_timing = false, $backtrace_index = 0)
{
	global $last_secs;

	$secs = microtime(true);

	if (!isset($last_secs)) {
		$last_secs = $secs;
	}

	$elapsed_secs = $secs - $last_secs;
	$last_secs = $secs;

	static $last_back_file = '';

	$back = debug_backtrace(DEBUG_BACKTRACE_IGNORE_ARGS, 2);

	$back_file = isset($back[$backtrace_index]['file']) ? $back[$backtrace_index]['file'] : '';
	$back_line = isset($back[$backtrace_index]['line']) ? $back[$backtrace_index]['line'] : '';

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
		$output .= "\n" . date('H:i:s');
		$output .= ' - ' . $back_file . "\n";

	}

	if ($show_timing) {
		$output .= number_format($elapsed_secs, 6) . ' -';
	}

	$output .= sprintf("%5d", $back_line) . ' - ';

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

error_reporting(E_ALL);
ini_set('display_errors', 1);

function dlogExceptionHandler($ex)
{
	dlog('exception', $ex->getMessage());
}

function dlogErrorHandler($errno, $errstr, $errfile, $errline)
{
	dlog('error', $errstr . " on line " . $errline . ' of file ' . $errfile);
}

set_exception_handler('dlogExceptionHandler');
set_error_handler('dlogErrorHandler');

?>

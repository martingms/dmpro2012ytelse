<?php
class Signal
{
	// Signals template
	private static $act, $inact, $empty = array(
		"node" 			=> array(),
		"iMem"			=> array(
							"adr" 	=> null,
							"data" 	=> null,
							"write" => false
		),
		"dMem"			=> array(
							"addr"	=> null,
							"data"	=> null,
							"write"	=> false
		),
		"data"			=> array(
							"in"	=> null,
							"out"	=> null
		),
		"ctrl" 			=> null
	);
	
	// Empty node signals
	private static $node = array(
		"N" 			=> null, 
		"S" 			=> null,
		"W" 			=> null,
		"E" 			=> null,
		"ctlr" 			=> null
	);
	
	/**
	 * Set SIMD output port signal
	 *
	 * @param row - {@code String}
	 * @param col - {@code String}
	 * @param port - {@code binary} 4-bit binary port
	 * @param value - {@code binary} value
	 */
	public static function setNodePorts($row, $col, $port, $value)
	{
		switch ($port) {
			case "N": $row--; $ignal = "S"; break;
			case "S": $row++; $ignal = "N"; break;
			case "W": $col--; $ignal = "E"; break;
			case "E": $col++; $ignal = "W"; break;
			default: return false;
		}
		if ($row >= 0 && $row <= SimdArray::$rows && $col >= 0 &&  $col <= SimdArray::$cols) {
			$tmpArr = array("N" => null, "S" => null, "E" => null, "W" => null);
			
			if (!isset(self::$inact[$row])) { self::$inact[$row] = array($col => $tmpArr); }
			if (!isset(self::$inact[$row][$col])) { self::$inact[$row][$col] = $tmpArr; }
			
			self::$inact[$row][$col][$port] = $value;
			
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 * Get SIMD input port
	 * 
	 * @param row - {@code int} 
	 * @param col - {@code int}
	 *
	 * @return {@code array}
	 */
	public static function getNodePorts($row, $col)
	{
		if (isset(self::$act['node'][$row][$col])) {
			$ports = self::$act['node'][$row][$col];
		} else {
			$ports = self::$node;
		}
		$ports['ctrl'] = self::$act['ctrl'];
		
		return $ports;
	}

	/**
	 *
	 */
	public static function set($type, $port, $val)
	{
		self::$inact[$type][$port] = $val;
	}
	
	/**
	 *
	 */
	public static function get($type, $port = null)
	{
		if ($port === null) {
			return self::$act[$type];
		} else {
			return self::$act[$type][$port];
		}
	}	
	
	/**
	 * Simulate clock tick
	 *
	 * This function will realod all the ports with new values
	 * set during the last period.
	 */
	public static function tick()
	{
		if (self::$act === null && self::$inact === null) {
			self::$act = self::$inact = self::$empty;
		}
		
		self::p("tick()");
		
		self::$act 		= self::$inact;
		self::$inact 	= self::$empty;
		
	}
	
	private static function p($msg)
	{
		echo "Signal.class: " . $msg . "\n";
	}
}
?>
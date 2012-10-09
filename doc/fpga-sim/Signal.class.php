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
							"adr"	=> null,
							"data"	=> null,
							"write"	=> false
		),
		"data"			=> array(
							"in"	=> null,
							"out"	=> null
		)
	);
	
	// Empty node signals
	private static $node = array(
		// Input com signals
		"N-in" 		=> null, 
		"S-in" 		=> null, 
		"E-in" 		=> null, 
		"W-in" 		=> null, 
		
		// Output com signals
		"N-out" 	=> null, 
		"S-out" 	=> null, 
		"E-out" 	=> null,
		"W-out" 	=> null,

		// Data signals
		"Data-in" 	=> null,
		"Data-out" 	=> null,
		
		// Instruction
		"instr-in" 	=> null,
	);
	
	/**
	 * Set SIMD node output signal
	 *
	 * @param row - {@code int} node row
	 * @param col - {@code int} node col
	 * @param signal - {@code String} signal name
	 * @param value - {@code String} new signal value 
	 *
	 * @return {@code true} on success; {@code false} on out of bounds
	 */
	public static function setNodeSignal($row, $col, $signal, $value)
	{
		list($name, $dir) = explode("-", $signal);
		if (isset($dir) && $dir == "out") {
			switch ($name) {
				case "N": $row--; $name = "S-in"; break;
				case "S": $row++; $name = "N-in"; break;
				case "W": $col--; $name = "E-in"; break;
				case "E": $col++; $name = "W-in"; break;
				default: return false;
			}
			if ($row >= 0 && $row <= SimdArray::$rows && $col >= 0 &&  $col <= SimdArray::$cols) {
				if (!isset(self::$inact[$row])) { self::$inact[$row] = array($col => self::$node); }
				if (!isset(self::$inact[$row][$col])) { self::$inact[$row][$col] = self::$node; }
				
				self::$inact[$row][$col][$name] = $value;
				
				return true;
			} else {
				// index out of bounds
				return false;
			}
		} else {
			throw new Exception('Can not write to read-only signal.');
		}
	}
	
	/**
	 * Get SIMD node input singal
	 *
	 * @param row - {@code int} node row
	 * @param col - {@code int} node col
	 * @param signal - {@code String} signal name
	 *
	 * @return {@code String} signal value
	 */
	public static function getNodeSignal($row, $col, $signal)
	{
		list($name, $dir) = explode("-", $signal);
		if (isset($dir) && $dir == "in") {
			if (!isset(self::$act[$row])) { self::$act[$row] = array($col => self::$node); }
			if (!isset(self::$act[$row][$col])) { self::$act[$row][$col] = self::$node; }
			if ($name == "instr") {
				return self::get("iMem", "data"); 
			} else {
				return self::$act[$row][$col][$name];
			}
		} else {
			throw new Exception('Can not read write-only signal.');
		}
	}
	
	/**
	 * Set arbitrary singal
	 *
	 * @param comp - {@code String} Component name
	 * @param signal - {@code String} Signal name
	 * @param val - {@code mixed} New signal value
	 *
	 * @return {@code false}
	 */
	public static function set($comp, $signal, $val)
	{
		self::$inact[$comp][$signal] = $val;
		
		return false;
	}
	
	/**
	 * Get arbitrary signal
	 *
	 * @param comp - {@code String} Component name
	 * @param signal - {@code mixed} Signal name; if {@code null} returns an {@code array}
	 *
	 * @return {@code mixed}
	 */
	public static function get($comp, $signal = null)
	{
		if ($signal === null) {
			return self::$act[$comp];
		} else {
			return self::$act[$comp][$signal];
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
		
		self::console("tick()");
		
		self::$act 		= self::$inact;
		self::$inact 	= self::$empty;
		
	}
	
	/**
	 * Debug console
	 *
	 * @param msg - {@code String} message to output
	 */
	private static function console($msg)
	{
		echo "Signal.class: " . $msg . "\n";
	}
}
?>

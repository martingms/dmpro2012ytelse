<?php
class SimdNode implements iSIMD
{
	private $id;
	private $row;
	private $col;
	
	private $reg = array(
		"zero" 				=> 0, 
		"rand"				=> 0,
		"R00" 				=> "", 
		"R01" 				=> "", 
		"R02" 				=> "", 
		"R03" 				=> "", 
		"R04" 				=> "", 
		"R05" 				=> "", 
		"R06" 				=> "",
		"T00" 				=> "",
		"T01" 				=> "",
		"T02" 				=> "",
		"T03" 				=> ""
	);
		
	public function __construct($row, $col)
	{
		$this->reg['rand'] 	= rand(1, 99);					// random value register
		$this->row 			= $row;							// node row
		$this->col 			= $col;							// node col
		$this->id 			= "SIMD-" . $row . "-" . $col;	// node unique ID
	}
	
	/**
	 * Simulate clock tick
	 */
	public function tick()
	{
		// Signals are handled in the background by Signal.class
	}
	
	/**
	 * Node logic
	 *
	 * Main logic for the node. This method will be triggered
	 * when all input/putput signals has been distribuated.
	 */
	public function run()
	{
		// Get instruction signal
		$in = $this->signal("instr-in");
		
		// Only execute SIMD instructions
		if ($in['ctrl'] == false) {
			$fn = $in['fn'];
			$rs = $in['rs'];
			
			switch ($fn) {
				case "send":
					$this->console("send");
					break;
				case "store":
					$this->console("store");
					break;
				case "storei":
					$c = $in['c'];
					$this->set($rs, $c);
					break;
				case "add":
					$rt = $in['rt'];
					$rd = $in['rd'];
					$this->set($rd, ($this->get($rs) + $this->get($rt)));
					break;
				case "print":
					$this->console($this->get($rs));
					break;
			}
		}
	}
	
	/**
	 * Get node register value
	 *
	 * @param addr - {@code String} register name
	 *
	 * @return {@code String} content of register {@code addr}
	 */
        private function get($addr) {
                return $this->reg[$addr];
        }

	/**
	 * Set node register value
	 *
	 * @param addr - {@code String} register name
	 * @param data - {@code String} write data
	 *
	 * @return {@code String} content of register {@code addr}
	 */
        private function set($addr, $data) {
                return $this->reg[$addr] = $data;
        }
	
	/**
	 * Node input/output signals
	 *
	 * Only output signals can be written.
	 *
	 * @param name - {@code String} signal name
	 * @param data - {@code String} data to write to signal
	 *
	 * @return {@code String} on get; otherwise {@code boolean}
	 */
	private function signal($name, $data = "", $write = false) {
		if ($write) {
			return Signal::setNodeSignal($this-row, $this->col, $name, $data);
		} else {
			return Signal::getNodeSignal($this->row, $this->col, $name);
		}
	}
	
	/**
	 * Debug console
	 *
	 * @param msg - {@code String} message to write to console
	 */
	private function console($msg) {
		echo $this->id . ": " . $msg . "\n";
	}	
}
?>

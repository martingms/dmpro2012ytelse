<?php
class SimdNode
{
	private $id;
	private $row;
	private $col;
	
	private $reg = array(
		"zero" 	=> 0, 
		"rand"		=> 0,
		"r00" 		=> "", 
		"r01" 		=> "", 
		"r02" 		=> "", 
		"r03" 		=> "", 
		"r04" 		=> "", 
		"r04" 		=> "", 
		"r06" 		=> "",
		"t00" 		=> "",
		"t01" 		=> "",
		"t02" 		=> "",
		"t03" 		=> "",
		"north" 	=> null,
		"south" 	=> null,
		"east" 	=> null,
		"west" 	=> null,
	);
	private $ports = array();
	
	public function __construct($row, $col)
	{
		$this->reg['rand'] = rand(1, 99);
		$this->row = $row;
		$this->col = $col;
		$this->id = "SIMD-" . $row . "-" . $col;
	}
	
	public function tick()
	{
	}
	
	public function run()
	{
		$fn = $in['fn'];
		$rs = $in['rs'];
		
		switch ($fn) {
			case "send":
				$this->_print("send");
				break;
			case "store":
				$this->_print("store");
				break;
			case "storei":
				$c = $in['c'];
				$this->_set($rs, $c);
				break;
			case "add":
				$rt = $in['rt'];
				$rd = $in['rd'];
				$this->_set($rd, ($this->_get($rs) + $this->_get($rt)));
				break;
			case "print":
				$this->_print($this->_get($rs));
				break;
		}
	}
	
	private function _get($reg) {
		return $this->reg[$reg];
	}
	
	private function _set($reg, $val) {
		$this->reg[$reg] = $val;
		return true;
	}
	
	private function _print($val) {
		echo $this->id . ": " . $val . "\n";
	}
	
	private function _getPort($dir) {
		return ports:: get($this->row, $this->col, $dir);
	}
}
?>
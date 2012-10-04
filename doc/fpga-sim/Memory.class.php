<?php
class Memory implements iSIMD
{
	private $ram 	= array();
	
	private $name	= "";
	private $size	= "";
	
	private $adr	= null;
	private $data	= null;
	private $write	= false;
	
	public function __construct($name, $size, $data = null)
	{
		$this->name = $name;
		$this->size = $size;

		$this->console("construct(" . $name . ", " . $size . ")");
		
		if ($data !== null) { $this->ram = $data; }
	}
	
	public function tick()
	{
		$this->console("tick()");

		$this->adr 		= Signal::get($this->name, "adr");
		$this->data 	= Signal::get($this->name, "data");
		$this->write 	= Signal::get($this->name, "write");
	}
	
	public function run()
	{
		$this->console("run()");

		if ($this->adr !== null) {
			$this->console("signal.adr=" . $this->adr);
			if ($this->write === true) {
				$this->ram[$this->adr] = $this->data;
				$this->console("signal.write=true");
			} else {
				$this->data = $this->ram[$this->adr];
				$this->console("signal.write=false");
			}
			Signal::set($this->name, "data", $this->data);
		} else {
			$this->console("signal.adr=false");
		}
	}
		
	private function console($msg)
	{
		echo $this->name . ".Memory.class: " . $msg . "\n";
	}
}
?>
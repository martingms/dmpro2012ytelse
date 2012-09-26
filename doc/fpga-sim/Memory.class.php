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

		$this->p("construct(" . $name . ", " . $size . ")");
		
		if ($data !== null) { $this->ram = $data; }
	}
	
	public function tick()
	{
		$this->p("tick()");

		$this->adr 		= Signal::get($this->name, "adr");
		$this->data 	= Signal::get($this->name, "data");
		$this->write 	= Signal::get($this->name, "write");
	}
	
	public function run()
	{
		$this->p("run()");

		if ($this->adr !== null) {
			$this->p("signal.adr=" . $this->adr);
			if ($this->write === true) {
				$this->ram[$this->adr] = $this->data;
				$this->p("signal.write=true");
			} else {
				$this->data = $this->ram[$this->adr];
				$this->p("signal.write=false");
			}
			Signal::set($this->name, "data", $this->data);
		} else {
			$this->p("signal.adr=false");
		}
	}
		
	private function p($msg)
	{
		echo $this->name . ".Memory.class: " . $msg . "\n";
	}
}
?>
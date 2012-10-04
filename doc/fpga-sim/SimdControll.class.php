<?php
class SimdControll implements iSIMD
{
	private $pc = 0;
	
	private $iMemData;
	
	public function __construct()
	{
		
	}

	public function tick() {
		$this->iMemData = Signal::get("iMem", "data");
	}
	
	public function run() {
		if ($this->iMemData === null) {
			$this->console("iMemData===null");
		} else {
			$this->console("iMemData!==null");
			
			if ($this->iMemData['ctrl'] === true) {
				$i = $this->iMemData;
				switch($i['fn']) {
					case "foo":
						$this->console("fn = foo");
						break;
					case "bar":
						$this->console("fn = bar");
						break;
					case "exit":
						$this->console("fn = exit");
						exit(0);
				}
			} else {
				
			}
			
		}
		Signal::set("iMem", "adr", $this->pc);
		
		// todo: figure out this shit
		$this->pc++;
	}
	
	private static function console($msg)
	{
		echo "SimdControl.class: " . $msg . "\n";
	}

}
?>
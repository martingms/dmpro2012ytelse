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
			$this->p("iMemData===null");
		} else {
			$this->p("iMemData!==null");
			
			if ($this->iMemData['ctrl'] === true) {
				$i = $this->iMemData;
				switch($i['fn']) {
					case "foo":
						$this->p("fn = foo");
						break;
					case "bar":
						$this->p("fn = bar");
						break;
					case "exit":
						$this->p("fn = exit");
						exit(0);
				}
			} else {
				
			}
			
		}
		Signal::set("iMem", "adr", $this->pc);
		
		// todo: figure out this shit
		$this->pc++;
	}
	
	private static function p($msg)
	{
		echo "SimdControl.class: " . $msg . "\n";
	}

}
?>
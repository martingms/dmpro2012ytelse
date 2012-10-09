<?php

class DMA implements iSIMD
{
	private static $width = 4, $height = 4;

	private $reg = array(
		"padding"	=> 1,
		"readActive" 	=> 1,
		"writeActive" 	=> 1,
		"readBase" 	=> 0,
		"writeBase" 	=> 10000,
		"readHorIncr" 	=> 1,
		"writeHorIncr" 	=> 1,
		"readVertIncr" 	=> 82,
		"writeVertIncr" => 80,
	);

	private $active = 1, $row = 0, $col = 5, $secondActionPhase = false, $memoryAssertPhase = true;

	public function tick()
	{
	}

	public function run()
	{
		if (!$this->active) {
			return;
		}

		$inPadding = $this->reg["padding"] &&
			($this->row == 0 ||
			 $this->row == DMA::$height + 1 ||
			 $this->col == 0 ||
			 $this->col == DMA::$width + 1);

		$shouldWrite = $this->reg["writeActive"] && !$inPadding;
		$shouldRead = $this->reg["readActive"];

		$action = null; // 0 for read, 1 for write

		if ($shouldWrite && $shouldRead) {
			$action = $this->secondActionPhase ? 1 : 0;
		} else if ($shouldRead) {
			$action = 0;
		} else if ($shouldWrite) {
			$action = 1;
		} else {
			$this->console("DMA error");
			return;
		}

		if ($action === 0) { // Read
			if ($this->memoryAssertPhase) { // Not requested from memory yet
				$addr = $this->reg["readBase"] +
					$this->reg["readHorIncr"] * $this->col +
					$this->reg["readVertIncr"] * $this->row;
				Signal::set("dMem", "adr", $addr);
				Signal::set("dMem", "write", false);
				//$this->console("Asserting read request for adddress ".$addr);
			} else { // Already requested from memory
				$addr = Signal::get("dMem", "adr");
				$data = Signal::get("dMem", "data");
				$this->console("Putting value ".$data." (from addr. ".$addr.") in SIMD row ".$this->row);
				$this->secondActionPhase = !$this->secondActionPhase;
			}
		} else if ($action === 1) { // Write
			if ($this->memoryAssertPhase) { // Not sent to memory yet
				$addr = $this->reg["writeBase"] +
					$this->reg["writeHorIncr"] * $this->col +
					$this->reg["writeVertIncr"] * $this->row;
				Signal::set("dMem", "adr", $addr);
				Signal::Set("dMem", "data", 1337); // TODO, obviously
				Signal::set("dMem", "write", true);
				//$this->console("Asserting write request for adddress ".$addr);
			} else { // Sent to memory last cycle
				$addr = Signal::get("dMem", "adr");
				$data = Signal::get("dMem", "data");
				Signal::set("dMem", "write", false);
				$this->console("Wrote ".$data." to address ".$addr);
				$this->secondActionPhase = !$this->secondActionPhase;
			}
		} else {
			$this->console("DMA error");
			return;
		}

		$shouldProceed = !$this->memoryAssertPhase && (($action == 0 && !$shouldWrite) || ($action == 1));
		$this->memoryAssertPhase = !$this->memoryAssertPhase;

		if ($shouldProceed) {
			$this->secondActionPhase = false;
			$this->memoryAssertPhase = true;
			$this->row++;
			if (($this->reg["padding"] && $this->row >= DMA::$height + 2) ||
			    (!$this->reg["padding"] && $this->row >= DMA::$height)) {
				$this->row = 0;
				$this->col--;
				$this->console("Stepping S");
				if ($this->col < 0) {
					$this->console("DMA done");
					$this->active = 0;
				}
			}
		}
	}
	
	private function console($msg)
	{
		echo "DMA.class: " . $msg . "\n";
	}
}

?>

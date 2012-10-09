<?php

//error_reporting(-1);

require_once "iSIMD.interface.php";
require_once "Signal.class.php";
require_once "Memory.class.php";
require_once "SimdArray.class.php";
require_once "SimdNode.class.php";
require_once "SimdControll.class.php";
require_once "DMA.class.php";

// Simulation Controls
$steps = 110;

// Create SIMD nodes
$nodes 	= new SimdArray(4, 4);
$ctrl 	= new SimdControll();
$imem 	= new Memory("iMem", 1000, array(
	array("ctrl" => true,  "fn" => "foo"),
	array("ctrl" => true,  "fn" => "bar"),
	array("ctrl" => false, "fn" => "print", 	"rs" => "rand"),
	array("ctrl" => false, "fn" => "storei",	"rs" => "R00", "c" => 100),
	array("ctrl" => false, "fn" => "add", 		"rs" => "rand", "rt" => "R00", "rd" => "R01"),
	array("ctrl" => false, "fn" => "print", 	"rs" => "R01"),
	//array("ctrl" => true,  "fn" => "exit"),
));
$dmem   = Memory::createFromImage("dMem", "input/lenna_padded.png");
$dma    = new DMA();

// Simulate the processor
echo "Starting simulation!\n";
echo "----------\n";
while ($steps-- > 0) {
	// Simulate clock tick
	Signal::tick();
	
	$imem	->tick();
	$dmem	->tick();
	$ctrl	->tick();
	$nodes	->tick();
	$dma	->tick();
	
	$imem	->run();
	$dmem	->run();
	$ctrl	->run();
	$nodes	->run();
	$dma	->run();

	echo "----------\n";
}

?>

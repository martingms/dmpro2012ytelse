<?php
class SimdArray implements iSIMD
{
	private static $rows;
	private static $cols;
	
	private $nodes = array();
	
	public function __construct($rows, $cols)
	{
		self::$rows = $rows;
		self::$cols = $cols;
		
		for ($row = 0; $row < $rows; $row++) {
			$this->nodes[$row] = array();
			for ($col = 0; $col < $cols; $col++) {
				$this->nodes[$row][$col] = new SimdNode($row, $col);
			}
		}
	}
	
	public function tick()
	{
		for ($row = 0; $row < self::$rows; $row++) {
			for ($col = 0; $col < self::$cols; $col++) {
				$this->nodes[$row][$col]->tick();
			}
		}
		
	}
	
	public function run()
	{
		for ($row = 0; $row < self::$rows; $row++) {
			for ($col = 0; $col < self::$cols; $col++) {
				$this->nodes[$row][$col]->run();
			}
		}
	}
	
	public static function rows()
	{
		return self::$rows;
	}
	
	public static function cols()
	{
		return self::$rows;
	}
	
	private function console($msg)
	{
		return $msg;
	}
}
?>

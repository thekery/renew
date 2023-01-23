<?php

class Regisztracio_Controller
{

    public $baseName = 'regisztracio';
    public function main(array $vars) // a router által tovább adott paraméterek $vars tömbben.
	{
		// nézet betöltése
		$view = new View_Loader($this->baseName."_main");
	}
}

?>
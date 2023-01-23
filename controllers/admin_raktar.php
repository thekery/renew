<?php

class Admin_Raktar_Controller
{
    public $baseName = 'raktar';
    public function main(array $vars)
    {
        $view = new View_Loader($this->baseName."_main");
    }
}

?>

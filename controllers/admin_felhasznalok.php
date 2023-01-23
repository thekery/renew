<?php

class Admin_Felhasznalok_Controller
{
    public $baseName = 'felhasznalok';
    public function main(array $vars)
    {
        $view = new View_Loader($this->baseName."_main");
    }
}

?>

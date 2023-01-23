<?php

class Pdfgen_Controller{
    public $baseName = 'pdfgen';
    public function main(array $vars)
    {
        $v  = new Pdfgen_Model();
        $v->gen_lista($vars);
    }
}
?>

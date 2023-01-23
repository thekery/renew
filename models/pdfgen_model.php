<?php

// autoloader when using Composer

require_once('includes/TCPDF/examples/tcpdf_include.php');
require_once('includes/TCPDF/tcpdf.php');


class Pdfgen_Model{


    public function gen_lista($vars)

    {

        $connection = Database::getConnection();
        $sql = 'select gep.id, .gep.gyarto, gep.tipus, kijelzo, memoria, merevlemez, processzor.proci_gyarto, processzor.proci_tipus, oprendszer.nev, videovezerlo, db, ar from gep inner join oprendszer on gep.oprendszerid=oprendszer.id inner join processzor on gep.processzorid=processzor.id where gep.gyarto="' . $vars["gepgyarto"] . '" and processzor.proci_gyarto="' . $vars["procigyarto"] . '" and oprendszer.nev="' . $vars["osnev"] . '";';
        $stmt = $connection->query($sql);
        $adat = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $retData['eredmeny'] = "OK";

// create new PDF document
        //$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
        $pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
// set document information
        $pdf->setCreator(PDF_CREATOR);
        $pdf->setAuthor("Renew KFT.");
        $pdf->setTitle('Raktári lista');
        $pdf->setSubject('Lista');
        $pdf->setKeywords('Lista,PDF');

// set default header data
        $pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);

// set header and footer fonts
        $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
        $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
        $pdf->setDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
        $pdf->setMargins(PDF_MARGIN_LEFT, 40, PDF_MARGIN_RIGHT);
        $pdf->setHeaderMargin(PDF_MARGIN_HEADER);
        $pdf->setFooterMargin(PDF_MARGIN_FOOTER);

// set auto page breaks
        $pdf->setAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
        $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
        if (@file_exists(dirname(__FILE__).'/lang/hun.php')) {
            require_once(dirname(__FILE__).'/lang/hun.php');
            $pdf->setLanguageArray($l);
        }

// ---------------------------------------------------------
        var_dump($adat);
// set default font subsetting mode
        $pdf->setFontSubsetting(true);

// Set font
// dejavusans is a UTF-8 Unicode font, if you only need to
// print standard ASCII chars, you can use core fonts like
// helvetica or times to reduce file size.

        $pdf->setFont('dejavusans', '', 14, '', true);
        $pdf->setTextShadow(array('enabled'=>true, 'depth_w'=>0.2, 'depth_h'=>0.2, 'color'=>array(196,196,196), 'opacity'=>1, 'blend_mode'=>'Normal'));
// Add a page
// This method has several options, check the source code documentation for more information.
        $pdf->AddPage();
        $pdf->SetFont('dejavusans', 'B', 12);

        //$pdf->Cell(0,5,"",0,false,'C',0, '', 0, false, 'M');

        $pdf->Cell(27,10,"Gyártó",1,false,'C',true,'',0);
        $pdf->Cell(27,10,"Típus",1,false,'C',0,'',0);
        $pdf->Cell(27,10,"CPU",1,false,'C',0,'',0);
        $pdf->Cell(27,10,"RAM",1,false,'C',0,'',0);
        $pdf->Cell(27,10,"HDD/SSD",1,false,'C',0,'',0);
        $pdf->Cell(27,10,"OS",1,false,'C',0,'',0);
        $pdf->Cell(27,10,"Kijelző",1,false,'C',0,'',0);
        $pdf->Cell(27,10,"GPU",1,false,'C',0,'',0);
        $pdf->Cell(27,10,"Darab",1,false,'C',0,'',0);
        $pdf->Cell(27,10,"Ár",1,false,'C',0,'',0);
        $pdf->Ln(10);
        $pdf->SetFont('dejavusans', '', 11);
        for($i=0;$i<count($adat);$i++) {
            $pdf->Cell(27, 20, ($adat[$i]['gyarto']), 1, false, 'C', 0, '', 0,true,'','T');
            $pdf->MultiCell(27, 20, $adat[$i]['tipus'], 1, 'C', '',0);
            $pdf->Cell(27, 20, $adat[$i]['proci_gyarto'], 1, false, 'C', 0, '', 0,true,'','T');
            $pdf->Cell(27, 20, $adat[$i]['memoria']." MB", 1, false, 'C', 0, '', 0,true,'','T');
            $pdf->Cell(27, 20, $adat[$i]['merevlemez']." GB",  1, false, 'C', 0, '', 0,true,'','T');
            $pdf->Cell(27, 20, $adat[$i]['nev'], 1, false, 'C', 0, '', 0,true,'','T');
            $pdf->Cell(27, 20, $adat[$i]['kijelzo']."\"",  1, false, 'C', 0, '', 0,true,'','T');
            $pdf->MultiCell(27, 20, $adat[$i]['videovezerlo'], 1, 'C', '', 0, '', '',true);
            $pdf->Cell(27, 20, $adat[$i]['db']." db",  1, false, 'C', 0, '', 0,true,'','T');
            $pdf->Cell(27, 20, $adat[$i]['ar']." HUF",  1, false, 'C', 0, '', 0,true,'','T');
            $pdf->Ln(20);

        }
        $pdf->Ln(5);







// Close and output PDF document
// This method has several options, check the source code documentation for more information.
        ob_end_clean();
        $pdf->Output('Renew-Lista.pdf', 'I');

    }


}
class MYPDF extends TCPDF {

    //Page header
    public function Header() {
        // Logo

        $image_file = K_PATH_IMAGES.'logo.jpg';
        $this->Image($image_file, 10, 5, 20, 20, 'JPG', '', 'T', false, 300, '', false, false, 0, false, false, false);
        // Set font
        $this->SetFont('dejavusans', 'B', 30);
        // Title
        $this->SetY(15);
        $this->Cell(0, 15, 'Raktári lista', 0, false, 'C', 0, '', 0, false, 'M', 'M');
        $this->Image($image_file, 180, 5, 20, 20, 'JPG', '', 'T', false, 300, '', false, false, 0, false, false, false);
        $this->Ln();
        $this->Ln(5);
        $this->SetFont('dejavusans', 'BU', 10);
        $this->Cell(0, 15, 'Renew Kft.', 0, false, 'C', 0, '', 0, false, 'M', 'M');
        $this->SetY(30);
        $this->writeHTML("<hr>",true,false,false,false,'');

    }
    // Page footer
    public function Footer() {
        // Position at 15 mm from bottom
        $this->SetY(-15);
        // Set font
        $this->SetFont('dejavusans', 'I', 8);
        // Page number
        $this->Cell(0, 10, 'oldal '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
    }
}
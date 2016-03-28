<?php
require_once "../autoload.inc.php";

//reference the Dompdf namespace
use Dompdf\Dompdf;

//instantiate and use the dompdf class
$dompdf = new Dompdf();
$dompdf->set_option('isHtml5ParserEnabled', true);

//html
$html = file_get_contents('file_html.php');
$dompdf->loadHtml($html);

//(Optional) Setup the paper size and orientation
$dompdf->setPaper('A4', 'portrait'); //portrait, landscape

//Render the HTML as PDF
$dompdf->render();

//Stream - Output the generated PDF to Browser
//$dompdf->output();
$dompdf->stream('pdf');
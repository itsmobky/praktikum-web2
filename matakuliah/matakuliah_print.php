<?php
require('../fpdf/fpdf.php');

$pdf = new FPDF('P', 'mm', 'A4');
$pdf->SetLeftMargin(10);
$pdf->AddPage();
$pdf->SetFont('Arial', 'B', 16);
$pdf->Cell(0, 10, 'LAPORAN DATA MATA KULIAH', 0, 10, 'C');
$pdf->Ln(5);

$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(10, 8, 'No.', 1, 0, 'C');
$pdf->Cell(30, 8, 'Kode', 1, 0, 'C');
$pdf->Cell(100, 8, 'Nama Mata Kuliah', 1, 0, 'C');
$pdf->Cell(20, 8, 'SKS', 1, 0, 'C');
$pdf->Cell(30, 8, 'Semester', 1, 1, 'C');

$pdf->SetFont('Arial', '', 10);
include '../connection.php';

$no = 1;
$result = mysqli_query($con, "SELECT * FROM matakuliah");
while ($data = mysqli_fetch_array($result)) {
    $pdf->Cell(10, 8, $no++, 1, 0, 'C');
    $pdf->Cell(30, 8, $data['kode'], 1, 0);
    $pdf->Cell(100, 8, $data['nama'], 1, 0);
    $pdf->Cell(20, 8, $data['sks'], 1, 0, 'C');
    $pdf->Cell(30, 8, $data['semester'], 1, 1, 'C');
}

$pdf->Output('I');

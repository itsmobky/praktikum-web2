<?php
include "../connection.php";

$id = $_GET['id'];

// Hapus data matakuliah berdasarkan ID
$result = mysqli_query($con, "DELETE FROM matakuliah WHERE id=$id");

// Redirect kembali ke halaman daftar matakuliah
header("Location:../admin/?page=matakuliah-show");

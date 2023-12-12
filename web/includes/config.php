<?php
$hostname = "localhost";
$username = "root";
$password = "";
$database = "kip";
$port = 3309;

$koneksi = mysqli_connect($hostname, $username, $password, $database, $port);

// script cek koneksi
if (!$koneksi) {
    die("Koneksi Tidak Berhasil: " . mysqli_connect_error());
}

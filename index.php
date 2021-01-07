<?php
    $koneksi = mysqli_connect("localhost", "root", "", "user");
 
    if (mysqli_connect_errno()){
        echo "Koneksi database mysqli gagal : " . mysqli_connect_error();
    }

    $query = mysqli_query($koneksi, "SELECT * FROM mahasiswa");
    $user = mysqli_fetch_array($query);

    echo "<h1>Nama : ".$user['nama']."</h1>";
    echo "<p><b>NIM : ".$user['nim']."</b></p>";
    echo "<p><b>Hobi : ".$user['hobi']."</b></p>";
?>

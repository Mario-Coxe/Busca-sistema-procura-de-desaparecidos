<?php

$con = mysqli_connect("localhost","root","","busca");
if (mysqli_connect_errno())
{
 echo "erro ao conectar com MySQL: " . mysqli_connect_error();
}
?>
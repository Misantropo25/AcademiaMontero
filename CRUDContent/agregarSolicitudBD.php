<?php

$nombre = $_POST['nombre'];
$apellidoPaterno = $_POST['apellidoPaterno'];
$apellidoMaterno = $_POST['apellidoMaterno'];
$numeroCelularEstudiante = $_POST['numeroCelularEstudiante'];
$correoElectronico = $_POST['correoElectronico'];
$nombreApoderado = $_POST['nombreApoderado'];
$numeroCelularApoderado = $_POST['numeroCelularApoderado'];

$_SESSION['nombre'] = $nombre;


$con = mysqli_connect(
    'localhost',
    'root',
    '',
    'base_academia_montero'
);

$consulta = " INSERT INTO talumnoSolicitudRegistro VALUES ('A00021','S00021','contra21',NOW(),'$nombre','$apellidoPaterno','$apellidoMaterno', '$numeroCelularEstudiante', '$correoElectronico','$numeroCelularApoderado','$nombreApoderado') ";
$resultado = mysqli_query($con, $consulta);
$filas = mysqli_num_rows($resultado);

if ($filas) {
    header("location: ../InterfacesEstudiante/solicitudRegistroAceptada.php");
} else {
?>
    <?php
    echo 'QueryFail'
    ?>
    <?php
}
mysqli_free_result($resultado);
mysqli_close($con);

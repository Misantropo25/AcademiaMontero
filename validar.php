<?php

$usuario = $_POST['Usuario'];
$contraseña = $_POST['Contraseña'];
$tipo = $_POST['tipo'];
session_start();

$_SESSION['Usuario'] = $usuario;

$con = mysqli_connect(
    'localhost',
    'root',
    '',
    'base_academia_montero'
);

//Validacion opcion Estudiante


switch ($tipo) {
    case 'Estudiante':
        $consulta = " SELECT * FROM talumnoSolicitudRegistro WHERE IdAlumno = '$usuario' AND Contrasenia='$contraseña' ";
        $resultado = mysqli_query($con, $consulta);
        $filas = mysqli_num_rows($resultado);

        if ($filas) {
            header("location: InterfacesEstudiante/menuEstudiante.php");
        } else {
?>
    <?php
            $errorLogin = "Nombre de usuario y/o password es incorrecto";

            include("index.php");
    ?>
    <?php
        }
        mysqli_free_result($resultado);
        mysqli_close($con);
        break;
    case 'Docente':
        $consulta = " SELECT * FROM tdocente WHERE IdDocente = '$usuario' AND contrasenia='$contraseña' ";
        $resultado = mysqli_query($con, $consulta);
        $filas = mysqli_num_rows($resultado);

        if ($filas) {
            header("location: InterfacesDocente/menuDocente.php");
        } else {
    ?>
    <?php
            $errorLogin = "Nombre de usuario y/o password es incorrecto";

            include("index.php");
    ?>
    <?php
        }
        mysqli_free_result($resultado);
        mysqli_close($con);
        break;
    case 'Administrador':
        $consulta = " SELECT * FROM tadministrador WHERE IdAdministrador = '$usuario' AND contrasenia='$contraseña' ";
        $resultado = mysqli_query($con, $consulta);
        $filas = mysqli_num_rows($resultado);

        if ($filas) {
            header("location: InterfacesAdministrador/menuAdministrador.php");
        } else {
    ?>
    <?php
            $errorLogin = "Nombre de usuario y/o password es incorrecto";

            include("index.php");
    ?>
    <?php
        }
        mysqli_free_result($resultado);
        mysqli_close($con);
        break;
        break;
    default:
        # code...
        break;
}



//Validacion opcion Docente







//Validacion Opcion Administrador


    ?>
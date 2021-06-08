
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Academia Montero</title>
    <link rel="stylesheet" type="text/css" href="estilosCSS/loginstyle.css">
</head>
<body>
    <div>
        <div class="fondo_comun">
            <div class="contentCenter">
                <img src="Imagenes/Academia-logo5.png" alt="logo academia" width="279" height="106">
            </div>
            <div class="contentCenter"><select class="typeUser">
                <option value="typeEstudiante">Estudiante</option>
                <option value="typeDocente">Docente</option>
                <option value="typeAdmin">Admin</option>
              </select>
            </div>
            <br>
            <div class="contentCenter">
                <input class="inputLogin" type="text" placeholder="Usuario"><br>
                <input class="inputLogin" type="password" placeholder="Contraseña"><br>
                <label class="text_comun"><p>Si usted aun no esta registrado</p> dele click a:</label><br>
                <a href="InterfacesEstudiante/solicitud_registro.php" class="text_comun">Solicitud de registro</a>
                <br><br>
                <a href="InterfacesEstudiante/menuEstudiante.php"><button id="btnLogin" value="">Login</button></a>
            </div>
        </div>
    </div>
</body>
</html>

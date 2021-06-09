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
            <form action="validar.php" method="POST">
                


                <div class="contentCenter"><select name="tipo" class="typeUser">
                        <option value="Estudiante">Estudiante</option>
                        <option value="Docente">Docente</option>
                        <option value="Administrador">Administrador</option>
                    </select>
                </div>
                <br>

                <div class="contentCenter">
                    <input class="inputLogin" type="text" name="Usuario" placeholder="Usuario"><br>
                    <input class="inputLogin" type="password" name="Contraseña" placeholder="Contraseña"><br>

                    <label class="text_comun">
                        <p>Si usted aun no esta registrado</p> dele click a:
                    </label><br>
                    <a href="InterfacesEstudiante/solicitud_registro.php" class="text_comun">Solicitud de registro</a>
                    <br><br>
                    <button type="submit" id="btnLogin" value="Ingresar">Login</button></a>
                </div>
                <br>
                <h3 class="contentCenter">
                <?php
                    if(isset($errorLogin)){
                        echo $errorLogin;
                        
                    }

                ?>
                </h3>
            </form>
        </div>
    </div>
</body>

</html>
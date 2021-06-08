<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Academia Montero</title>

    <!--BOOTSTRAP-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../estilosCSS/fondo.css">
    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
</head>

<div id="container-head">
    <header>
        <nav>
            <div class="content_flex">
                <div id="content_icons">
                    <a href="/index.php"><button class="btn_icon"><img class="icon" src="../Imagenes/Home.png" alt="" width="54" height="52"></button></a>
                    <a href="#"><button class="btn_icon"><img class="icon" src="../Imagenes/Registro.png" alt="" width="40" height="52"></button></a>
                    <a href="#"><button class="btn_icon"><img class="icon" src="../Imagenes/User.png" alt="" width="51" height="52"></button></a>
                </div>
                <div id="content_logo">
                    <img src="../Imagenes/Academia-logo5.png" alt="logo" width="279" height="106">
                </div>
                <div id="content_volver">
                    <a href="menuEstudiante.php"><button class="btn_icon"><img class="icon" src="../Imagenes/Volver.png" alt="" width="54" height="52"></button></a>
                </div>
            </div>
        </nav>
    </header>
</div>
<div class="fondo_comun">
    <div>
        <h1>Alumnos En Curso</h1>
        <hr>
    </div>
    <div>
        <h3>Seleccione un Alumno</h3>
    </div>
    <div class="container p-4">
        <div class="row">
            <div class="col-md-7">
                <table class="table table-hover table-dark">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Seleccione</th>
                        </tr>

                    </thead>
                    <tbody>

                        <tr>
                            <td>Alumno 1</td>
                            <td>Apellido 1</td>
                            <td><a href="VisualizarAsistencia.php" class="btn btn-secondary">
                                    <i class="fas fa-marker"></i>
                                </a></td>
                        </tr>
                        <tr>
                            <td>Alumno 2</td>
                            <td>Apellido 2</td>
                            <td><a href="VisualizarAsistencia.php" class="btn btn-secondary">
                                    <i class="fas fa-marker"></i>
                                </a></td>
                        </tr>
                        <tr>
                            <td>Alumno 3</td>
                            <td>Apellido 3</td>
                            <td><a href="VisualizarAsistencia.php" class="btn btn-secondary">
                                    <i class="fas fa-marker"></i>
                                </a></td>
                        </tr>
                        <tr>
                            <td>Alumno 4</td>
                            <td>Apellido 4</td>
                            <td><a href="VisualizarAsistencia.php" class="btn btn-secondary">
                                    <i class="fas fa-marker"></i>
                                </a></td>
                        </tr>
                        <tr>
                            <td>Alumno 5</td>
                            <td>Apellido 5</td>
                            <td><a href="VisualizarAsistencia.php" class="btn btn-secondary">
                                    <i class="fas fa-marker"></i>
                                </a></td>
                        </tr>

                    </tbody>

            </div>

        </div>

    </div>


</div>

</html>
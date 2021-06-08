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

<body>
    <div class="fondo_comun">
        <div id="boxViAsistencia">
            <form>
                <p id="titulo">Registro de Asistencia</p>
                <hr>
                <br><br>
                <label id=lblCiclo class="entradas_input">Ciclo *******</label>
                <label id="lblCurso" class="entradas_input">Curso</label>
                <select class="curso" text="Seleccione">
                    <option value="CursoEstudiante">matematica</option>
                    <option value="CursoEstudiante">rv</option>
                    <option value="CursoEstudiante">rm</option>
                </select>

                <br /><br />
                <table class="table">
                    <thead>
                        <tr>
                            <th>Fecha de Sesion</th>
                            <th>Asistencia</th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>**************</td>
                            <td>**************</td>

                        </tr>
                        <tr>
                            <td>**************</td>
                            <td>**************</td>

                        </tr>
                        <tr>
                            <td>**************</td>
                            <td>**************</td>

                        </tr>
                        <tr>
                            <td>**************</td>
                            <td>**************</td>

                        </tr>
                    </tbody>

                </table>

                <br /><br />

            </form>
            <br />
        </div>
    </div>
</body>

</html>
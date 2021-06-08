<?php include("../includes/header.php") ?>
<!-- <link rel="stylesheet" type="text/css" href="../estilosCSS/tablas.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="../estilosCSS/solicitud_registro_style.css"> -->

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
                    <a href="../index.php"><button class="btn_icon"><img class="icon" src="../Imagenes/Volver.png" alt="" width="54" height="52"></button></a>
                </div>
            </div>
        </nav>
    </header>
</div>

<body>
    <div class="fondo_comun">
        <div>
            <h1>Registro de Asistencia</h1>
        </div>
        <div>
            <hr>
            <label id=lblCiclo class="entradas_input">Ciclo *******</label>
            <label id="lblCurso" class="entradas_input">Curso</label>
            <select class="curso" text="Seleccione">
                <option value="CursoEstudiante">matematica</option>
                <option value="CursoEstudiante">rv</option>
                <option value="CursoEstudiante">rm</option>
            </select>
        </div>
        <div>
            <h2>Tabla de Asistencias</h2>
            <table id="centro">
                <thead>
                    <tr>
                        <th id="columnap">Fecha de Sesion</th>
                        <th id="columnap">Asistencia</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td id="columna">**************</td>
                        <td id="columna">**************</td>
                    </tr>
                    <tr>
                        <td id="columna">**************</td>
                        <td id="columna">**************</td>
                    </tr>
                    <tr>
                        <td id="columna">**************</td>
                        <td id="columna">**************</td>
                    </tr>
                    <tr>
                        <td id="columna">**************</td>
                        <td id="columna">**************</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <?php include("../includes/footer.php") ?>
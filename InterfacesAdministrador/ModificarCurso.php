<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ModificarCurso</title>
    <link rel="stylesheet" href="../estilosCSS/styleModificar.css">
    <link rel="stylesheet" href="../estilosCSS/fondo.css" />
    <!-- BOOTSTRAP -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous"> 
    <link rel="stylesheet" type="text/css" href="../estilosCSS/fondo.css">
    <link rel="stylesheet" type="text/css" href="../estilosCSS/solicitud_registro_style.css">
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
        <form>
            <p id="titulo">Modificar Curso</p>
            <hr>
            <br><br>
            <label id=lblIdCurso class="entradas_input">ID Curso: </label>
            <label id=lblIdCurso class="entradas_input">****** </label>
            <br/><br/>
            <label id="lblNomCurso" class="entradas_input">Nombre de Curso</label>
            <input type="text" class="txts" id="txtNomCurso">
            <br/><br/>
            <label id="lblCapEstudaintes" class="entradas_input">Cantidad de EStudiantes</label>
            <input type="int" class="txts" id="txtCapEstudiantes">
            <br/><br/>
            <label id="lblLinkClassroom" class="entradas_input">Link  de Classroom</label>
            <input type="text" class="txts" id="txtPassword">
            <br/><br/>
            <label id="lblDiasSesion" class="entradas_input">Dias de Sesion</label>
            <input type="text" class="txts" id="txtDiasSesion">
            <br/><br/>
            <label id="lblHorasSesion" class="entradas_input">Horas de Sesion</label>
            <input type="text" class="txts" id="txtHorasSesion">
            <br/><br/>
            <label id="lblCostoCurso" class="entradas_input">Costo del Curso</label>
            <input type="text" class="txts" id="txtCostoCurso">
            <br/><br/>
            <label id="lblDescripcion" class="entradas_input">Descripcion</label>
            <input type="text" class="txts" id="txtDescripcion">
            <br/><br/>
            <label id="lblCiclo" class="entradas_input">Ciclo</label>
            <input type="text" class="txts" id="txtCiclo">
            <br/><br/>
            <input type="button" value="Realizar Cambios" id="btnRealizarCambios">
        </form>
        <br/>
    </div>
</body>
</html>
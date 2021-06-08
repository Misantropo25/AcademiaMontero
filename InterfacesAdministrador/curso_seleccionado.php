<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Curso Seleccionado</title>
    <link rel="stylesheet" href="../estilosCSS/cursoseleccionadostyle.css" />
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
            <a href="/index.php"
              ><button class="btn_icon">
                <img
                  class="icon"
                  src="../Imagenes/Home.png"
                  alt=""
                  width="54"
                  height="52"
                /></button
            ></a>
            <a href="#"
              ><button class="btn_icon">
                <img
                  class="icon"
                  src="../Imagenes/Registro.png"
                  alt=""
                  width="40"
                  height="52"
                /></button
            ></a>
            <a href="#"
              ><button class="btn_icon">
                <img
                  class="icon"
                  src="../Imagenes/User.png"
                  alt=""
                  width="51"
                  height="52"
                /></button
            ></a>
          </div>
          <div id="content_logo">
            <img
              src="../Imagenes/Academia-logo5.png"
              alt="logo"
              width="279"
              height="106"
            />
          </div>
          <div id="content_volver">
            <a href="menuEstudiante.php"
              ><button class="btn_icon">
                <img
                  class="icon"
                  src="../Imagenes/Volver.png"
                  alt=""
                  width="54"
                  height="52"
                /></button
            ></a>
          </div>
        </div>
      </nav>
    </header>
  </div>
  <body>
    <div class="fondo_comun">
      <h1 class="titulo">Visualizar Curso</h1>
      <label id="lblIdCurso" class="entradas_input">ID Curso: </label>
      <label id="lblIdCurso" class="DatosCursos">c12343 </label>
      <br /><br />
      <label id="lblNomCurso" class="entradas_input">Nombre de Curso:</label>
      <label class="DatosCursos">Curso 1</label>
      <br /><br />
      <label id="lblCapEstudaintes" class="entradas_input"
        >Cantidad de Estudiantes:</label
      >
      <label class="DatosCursos">30</label>
      <br /><br />
      <label id="lblLinkClassroom" class="entradas_input"
        >Link de Classroom:</label
      >
      <label class="DatosCursos">https://meet.google.com/qpn-oirs-xjw</label>
      <br /><br />
      <label id="lblDiasSesion" class="entradas_input">Dias de Sesion:</label>
      <label class="DatosCursos">Miercoles, Viernes, Sabado</label>
      <br /><br />
      <label id="lblHorasSesion" class="entradas_input">Horas de Sesion:</label>
      <label class="DatosCursos">8:00-9:00</label>
      <br /><br />
      <label id="lblCostoCurso" class="entradas_input">Costo del Curso:</label>
      <label class="DatosCursos">S/. 50</label>
      <br /><br />
      <label id="lblDescripcion" class="entradas_input">Descripcion:</label>
      <label class="DatosCursos"
        >Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta
        blanditiis officia quod repellat libero debitis ab ipsum eos, possimus
        repudiandae!</label
      >
      <br /><br />
      <label id="lblCiclo" class="entradas_input">Ciclo:</label>
      <label class="DatosCursos">Ciclo Verano 1 Secundaria</label>
      <br /><br />
      <input type="button" value="Modificar Curso" id="btnRealizarCambios" />
    </div>
  </body>
</html>

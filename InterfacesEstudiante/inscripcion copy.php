<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Document</title>
  <!-- CSS Estilo -->
  <link rel="stylesheet" type="text/css" href="../estilosCSS/estilosInscripcion copy.css" />
</head>

<body>
  <div id="container-head">
    <header>
      <nav>
        <div class="content_flex">
          <div id="content_icons">
            <a href="./index.html"><button class="btn_icon"><img class="icon" src="../Imagenes/Home.png" alt="" width="54" height="52"></button></a>
            <a href="#"><button class="btn_icon"><img class="icon" src="../Imagenes/Registro.png" alt="" width="40" height="52"></button></a>
            <a href="#"><button class="btn_icon"><img class="icon" src="../Imagenes/User.png" alt="" width="51" height="52"></button></a>
          </div>
          <div id="content_logo">
            <img src="../Imagenes/Academia-logo5.png" alt="" width="420" height="110">
          </div>
          <div id="content_volver">
            <a href="menu.html"><button class="btn_icon"><img class="icon" src="../Imagenes/Volver.png" alt="" width="54" height="52"></button></a>
          </div>
        </div>
      </nav>
    </header>
  </div>
  <div class="fondo_comun">
    <div>
      <h3>
        Cursos:
        <select name="" id="">
          <option value="">Ciclo Verano 1 Secundaria</option>
          <option value="">Ciclo Verano 2 Secundaria</option>
          <option value="">Ciclo Verano 3 Secundaria</option>
          <option value="">Reforzamiento 1 Secundaria</option>
          <option value="">Reforzamiento 2 Secundaria</option>
          <option value="">Reforzamiento 3 Secundaria</option>
        </select>
      </h3>
    </div>
    <div>
      <h3>Cursos</h3>
    </div>

    <div>

      <table id="centro">
        <tr>
          <td id="columnap">
            <h3 class="tabla-1">Nombre Curso</h3>
          </td>
          <td id="columnap">
            <h3>Horario</h3>
          </td>
          <td id="columnap">
            <h3>Capacidad de Alumnos</h3>
          </td>
          <td id="columnap"><label>Precio</label></td>
        </tr>
        <tr>
          <td id="columna">
            <h4>Curso 1</h4>
          </td>
          <td id="columna">
            <h4>5:00 - 7:00 p.m.</h4>
          </td>
          <td id="columna">
            <h4>10/20</h4>
          </td>
          <td id="columna"><label>S/. 100</label></td>
          <td id="columna1"><input type="checkbox" /></td>

        </tr>
        <tr>
          <td id="columna">
            <h4>Curso 2</h4>
          </td>
          <td id="columna">
            <h4>5:00 - 7:00 p.m.</h4>
          </td>
          <td id="columna">
            <h4>16/20</h4>
          </td>
          <td id="columna"><label>S/. 100</label></td>
          <td id="columna1"><input type="checkbox" /></td>
        </tr>
        <tr>
          <td id="columna">
            <h4>Curso 3</h4>
          </td>
          <td id="columna">
            <h4>7:00 - 9:00 p.m.</h4>
          </td>
          <td id="columna">
            <h4>20/20</h4>
          </td>
          <td id="columna"><label>S/. 100</label></td>
          <td id="columna1"><input type="checkbox" /></td>
        </tr>
        <tr>
          <td id="columna">
            <h4>Curso 4</h4>
          </td>
          <td id="columna">
            <h4>7:00 - 9:00 p.m.</h4>
          </td>
          <td id="columna">
            <h4>18/20</h4>
          </td>
          <td id="columna"><label>s/. 100</label></td>
          <td id="columna1"><input type="checkbox" /></td>
        </tr>
      </table>
    </div>
    <div class="boton">
      <label>S/. 500</label>
      <a href="#"><label for="btn_modal" class="lbl_modal">Abrir Modal</label></a>
    </div>

  </div>
  <div class="modal">
    <div class="contenedor">
      <header>Metodo de Pago</header>

      <a href="inscripcion.php"><label>X</label></a>
      <div class="contenido">
        <h3>Por favor Seleccione un metodo de Pago</h3>
        <div class="conteiner_buttons">

          <a href="pagoContado.php"><button><img src="../Imagenes/Home gradient.png"></button>
            <h4>Pago Al Contado</h4>
          </a>
          <a href="pagoEntidadBancaria.php"><button><img src="../Imagenes/Home Linear Gradient.png"></button>
            <h4>Pago Entidad Bancaria</h4>
          </a>

        </div>

      </div>

    </div>
  </div>
  </div>
</body>

</html>
<?php include("../includes/header.php") ?>
<link rel="stylesheet" type="text/css" href="../estilosCSS/solicitud_registro_style.css">



<body>
  <div class="fondo_comun">
    <h1 class="title">Solicitud de Registro</h1><br>
    <h2 class="subtitle">Informacion del Estudiante</h2>
    <form action="CRUDContent/agregarSolicitudBD.php" method="POST">
      <div class="content_center">
        <p class="text_comun">Nombre</p>
        <input class="controls" type="text" name="nombre">
        <p class="text_comun">Apellido paterno</p>
        <input class="controls" type="text" name="apellidoPaterno">
        <p class="text_comun">Apellido materno</p>
        <input class="controls" type="text" name="apellidoMaterno">
        <p class="text_comun">Numero de Celular</p>
        <input class="controls_nro" type="text" name="numeroCelularEstudiante">
        <p class="text_comun">Correo Electronico</p>
        <input class="controls" type="text" name="correoElectronico">
      </div>
      <br><br>
      <h2 class="subtitle">Informacion del Padre o Apoderado</h2>
      <div class="content_center">
        <p class="text_comun">Nombre del Apoderado</p>
        <input class="controls" type="text" name="nombreApoderado">
        <p class="text_comun">Numero del Apoderado</p>
        <input class="controls" type="text" name="numeroCelularApoderado">
      </div>
      <br><br>
      <a type="submit" id="btnLogin" value="Ingresar" href="solicitudRegistroAceptada.php">Enviar Solicitud de Registro</a>
    </form>
  </div>

  <?php include("../includes/footer.php") ?>
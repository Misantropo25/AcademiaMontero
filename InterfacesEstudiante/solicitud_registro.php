<?php include("../includes/header.php") ?>
<link rel="stylesheet" type="text/css" href="../estilosCSS/solicitud_registro_style.css">

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
    <h1 class="title">Solicitud de Registro</h1><br>
    <h2 class="subtitle">Informacion del Estudiante</h2>

    <div class="content_center">
      <p class="text_comun">Nombre</p>
      <input class="controls" type="text">
      <p class="text_comun">Apellido paterno</p>
      <input class="controls" type="text">
      <p class="text_comun">Apellido materno</p>
      <input class="controls" type="text">
      <p class="text_comun">Numero de Celular</p>
      <input class="controls_nro" type="text">
      <p class="text_comun">Correo Electronico</p>
      <input class="controls" type="text">
    </div>
    <br><br>
    <h2 class="subtitle">Informacion del Padre o Apoderado</h2>
    <div class="content_center">
      <p class="text_comun">Nombre del Apoderado</p>
      <input class="controls" type="text">
      <p class="text_comun">Numero del Apoderado</p>
      <input class="controls" type="text">
    </div>
    <br><br>
    <a href="solicitudRegistroAceptada.php">Enviar Solicitud de Registro</a>
  </div>

  <?php include("../includes/footer.php") ?>
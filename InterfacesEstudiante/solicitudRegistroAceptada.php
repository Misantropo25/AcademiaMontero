<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <!-- CSS Estilo -->
    <link
      rel="stylesheet"
      type="text/css"
      href="../estilosCSS/estilosInscripcion copy.css"
    />
  </head>

  <link
    rel="stylesheet"
    type="text/css"
    href="../estilosCSS/solicitud_registro_style.css"
  />

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
            <a href="../index.php"
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
      <h1 class="title">Solicitud de Registro</h1>
      <br />
      <h2 class="subtitle">Informacion del Estudiante</h2>

      <div class="content_center">
        <p class="text_comun">Nombre</p>
        <input class="controls" type="text" />
        <p class="text_comun">Apellido paterno</p>
        <input class="controls" type="text" />
        <p class="text_comun">Apellido materno</p>
        <input class="controls" type="text" />
        <p class="text_comun">Numero de Celular</p>
        <input class="controls_nro" type="text" />
        <p class="text_comun">Correo Electronico</p>
        <input class="controls" type="text" />
      </div>
      <br /><br />
      <h2 class="subtitle">Informacion del Padre o Apoderado</h2>
      <div class="content_center">
        <p class="text_comun">Nombre del Apoderado</p>
        <input class="controls" type="text" />
        <p class="text_comun">Numero del Apoderado</p>
        <input class="controls" type="text" />
      </div>
      <br /><br />
      <a href="https://academiamontero.com">Enviar Solicitud de Registro</a>
    </div>

    <div class="modal">
      <div class="contenedor">
        <header><h2>Solicitud de Registro Enviada</h2></header>
        <div class="subtitle">
          <h2>
            Revisa tu correo electronico te sera enviado tu codigo y contraseña
          </h2>
        </div>
        <a href="https://academiamontero.com"><label> X </label></a>
        <div class="contenido">
          <img
            id="image"
            src="../Imagenes/gifEnviado.gif"
            alt="Funny image"
            width="400"
            height="230"
          />
          
        </div>
        
      </div>
    </div>
  </body>
</html>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>PROJECT</title>
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Abel&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  
  <link rel="stylesheet" href="/{{BASE_DIR}}/public/css/products.css">
  <link rel="stylesheet" href="/{{BASE_DIR}}/public/css/books.css">
  <link rel="stylesheet" href="/{{BASE_DIR}}/public/css/sidebar.css">
  <link rel="stylesheet" href="/{{BASE_DIR}}/public/css/Header.css">
  <link rel="stylesheet" href="/{{BASE_DIR}}/public/css/carrito.css">
  <link rel="stylesheet" href="/{{BASE_DIR}}/public/css/Template2.css">
  <link rel="stylesheet" href="/{{BASE_DIR}}/public/css/compra.css">
  <link rel="stylesheet" href="/{{BASE_DIR}}/public/css/appstyle.css" />
  {{foreach SiteLinks}}
  <link rel="stylesheet" href="/{{~BASE_DIR}}/{{this}}" />
  {{endfor SiteLinks}}
  {{foreach BeginScripts}}
  <script src="/{{~BASE_DIR}}/{{this}}"></script>
  {{endfor BeginScripts}}
</head>

<body>
  <!-- Header-->
  <div class="Header">
    
     
    <div class="BarraBusqueda">      
   
      <svg xmlns="http://www.w3.org/2000/svg" onclick="MisLibros()" id="SvgBooks" height="24" width="24">
        <path d="M6 22q-.825 0-1.412-.587Q4 20.825 4 20V4q0-.825.588-1.413Q5.175 2 6 2h12q.825 0 1.413.587Q20 3.175 20 4v16q0 .825-.587 1.413Q18.825 22 18 22Zm0-2h12V4h-2v7l-2.5-1.5L11 11V4H6v16Zm0 0V4v16Zm5-9 2.5-1.5L16 11l-2.5-1.5L11 11Z" />
      </svg>
      <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" id="SvgFavorites" onclick="Pasarela()"><path d="m12 10-1.4-1.4L12.175 7H8V5h4.175l-1.6-1.6L12 2l4 4ZM7 22q-.825 0-1.412-.587Q5 20.825 5 20q0-.825.588-1.413Q6.175 18 7 18t1.412.587Q9 19.175 9 20q0 .825-.588 1.413Q7.825 22 7 22Zm10 0q-.825 0-1.412-.587Q15 20.825 15 20q0-.825.588-1.413Q16.175 18 17 18t1.413.587Q19 19.175 19 20q0 .825-.587 1.413Q17.825 22 17 22ZM1 4V2h3.275l4.25 9h7l3.9-7H21.7l-4.4 7.95q-.275.5-.738.775Q16.1 13 15.55 13H8.1L7 15h12v2H7q-1.125 0-1.713-.975-.587-.975-.037-1.975L6.6 11.6 3 4Z"/></svg>              
      <li><a href="logout.php"><svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" viewBox="0 0 24 24">
        <path d="M0 0h24v24H0z" fill="none"/>
        <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 16c-3.31 0-6-2.69-6-6s2.69-6 6-6 6 2.69 6 6-2.69 6-6 6zm1-4h-2v-2h2v2zm0-4h-2V7h2v3z"/>
      </svg>&nbsp;</a></li>
    </div> 

    <div class="MSJ">      
      <p id="Msj">Tipo de mensaje</p>
    </div>    
    <div class="Modal">
      <div class="imgModal"></div>
      <div class="Acciones">
        <svg xmlns="http://www.w3.org/2000/svg" height="48" width="48" onclick="OcultarModal()">
          <path d="M17.95 35.9 6 23.95 17.95 12l2.15 2.15-8.3 8.3H42v3H11.8l8.3 8.3Z" />
        </svg>
        <h1 class="TituloLibro" id="txtTitulo">Titulo</h1>
      </div>
      <div class="ContenedorContenido">
        <div class="ContenidoInformacionModal">
          <h3>Sipnosis</h3>
          <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24">
            <path d="M7 17h7v-2H7Zm0-4h10v-2H7Zm0-4h10V7H7ZM5 21q-.825 0-1.413-.587Q3 19.825 3 19V5q0-.825.587-1.413Q4.175 3 5 3h14q.825 0 1.413.587Q21 4.175 21 5v14q0 .825-.587 1.413Q19.825 21 19 21Zm0-2h14V5H5v14ZM5 5v14V5Z" />
          </svg>
          <p class="ContenidoLibro" id="txtContenido"></p>
        </div>
        <div class="ContenidoLibro2">
          <svg xmlns="http://www.w3.org/2000/svg" onclick="BusquedaAutor(1)" height="24" width="24">
            <path d="M12 12q-1.65 0-2.825-1.175Q8 9.65 8 8q0-1.65 1.175-2.825Q10.35 4 12 4q1.65 0 2.825 1.175Q16 6.35 16 8q0 1.65-1.175 2.825Q13.65 12 12 12Zm-8 8v-2.8q0-.85.438-1.563.437-.712 1.162-1.087 1.55-.775 3.15-1.163Q10.35 13 12 13t3.25.387q1.6.388 3.15 1.163.725.375 1.162 1.087Q20 16.35 20 17.2V20Zm2-2h12v-.8q0-.275-.137-.5-.138-.225-.363-.35-1.35-.675-2.725-1.013Q13.4 15 12 15t-2.775.337Q7.85 15.675 6.5 16.35q-.225.125-.362.35-.138.225-.138.5Zm6-8q.825 0 1.413-.588Q14 8.825 14 8t-.587-1.412Q12.825 6 12 6q-.825 0-1.412.588Q10 7.175 10 8t.588 1.412Q11.175 10 12 10Zm0-2Zm0 10Z" />
          </svg>
          <h3>Autor</h3>
          <p id="txtAutor">Gabriel Garcia Marquez</p>
          <svg xmlns="http://www.w3.org/2000/svg" onclick="BusquedaGenero(1)" height="24" width="24">
            <path d="M12 20q-1.2-.95-2.6-1.475Q8 18 6.5 18q-1.05 0-2.062.275-1.013.275-1.938.775-.525.275-1.012-.025Q1 18.725 1 18.15V6.1q0-.275.138-.525.137-.25.412-.375 1.15-.6 2.4-.9Q5.2 4 6.5 4q1.45 0 2.838.375Q10.725 4.75 12 5.5v12.1q1.275-.8 2.675-1.2 1.4-.4 2.825-.4.9 0 1.763.15.862.15 1.737.45v-12q.375.125.738.262.362.138.712.338.275.125.413.375.137.25.137.525v12.05q0 .575-.487.875-.488.3-1.013.025-.925-.5-1.938-.775Q18.55 18 17.5 18q-1.5 0-2.9.525T12 20Zm2-5V5.5l5-5v10Zm-4 1.625v-9.9q-.825-.35-1.712-.537Q7.4 6 6.5 6q-.925 0-1.8.175T3 6.7v9.925q.875-.325 1.738-.475Q5.6 16 6.5 16t1.762.15q.863.15 1.738.475Zm0 0v-9.9Z" />
          </svg>
          <h3>Genero</h3>
          <p id="txtGenero">Poesía</p>
          <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24">
            <path d="M14 13q-1.25 0-2.125-.875T11 10q0-1.25.875-2.125T14 7q1.25 0 2.125.875T17 10q0 1.25-.875 2.125T14 13Zm-7 3q-.825 0-1.412-.588Q5 14.825 5 14V6q0-.825.588-1.412Q6.175 4 7 4h14q.825 0 1.413.588Q23 5.175 23 6v8q0 .825-.587 1.412Q21.825 16 21 16Zm2-2h10q0-.825.587-1.413Q20.175 12 21 12V8q-.825 0-1.413-.588Q19 6.825 19 6H9q0 .825-.588 1.412Q7.825 8 7 8v4q.825 0 1.412.587Q9 13.175 9 14Zm11 6H3q-.825 0-1.412-.587Q1 18.825 1 18V7h2v11h17ZM7 14V6v8Z" />
          </svg>
          <h3>Precio</h3>
          <p id="txtPrecio" style="font-size: 18px;">1200lps</p>
          <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24">
            <path d="m11.9 22 4.55-12h2.1l4.55 12H21l-1.05-3.05H15.1L14 22Zm3.8-4.8h3.6l-1.75-4.95h-.1ZM4 19l-1.4-1.4 5.05-5.05q-.95-1.05-1.662-2.175Q5.275 9.25 4.75 8h2.1q.45.9.963 1.625.512.725 1.237 1.525 1.1-1.2 1.825-2.462Q11.6 7.425 12.1 6H1V4h7V2h2v2h7v2h-2.9q-.525 1.775-1.425 3.45-.9 1.675-2.225 3.15l2.4 2.45-.75 2.05L9 14Z" />
          </svg>
          <h3>Idioma</h3>
          <p id="txtIdioma">Español</p>
          <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24">
            <path d="M5 22q-.825 0-1.413-.587Q3 20.825 3 20V6q0-.825.587-1.412Q4.175 4 5 4h1V2h2v2h8V2h2v2h1q.825 0 1.413.588Q21 5.175 21 6v14q0 .825-.587 1.413Q19.825 22 19 22Zm0-2h14V10H5v10ZM5 8h14V6H5Zm0 0V6v2Zm7 6q-.425 0-.712-.288Q11 13.425 11 13t.288-.713Q11.575 12 12 12t.713.287Q13 12.575 13 13t-.287.712Q12.425 14 12 14Zm-4 0q-.425 0-.713-.288Q7 13.425 7 13t.287-.713Q7.575 12 8 12t.713.287Q9 12.575 9 13t-.287.712Q8.425 14 8 14Zm8 0q-.425 0-.712-.288Q15 13.425 15 13t.288-.713Q15.575 12 16 12t.712.287Q17 12.575 17 13t-.288.712Q16.425 14 16 14Zm-4 4q-.425 0-.712-.288Q11 17.425 11 17t.288-.712Q11.575 16 12 16t.713.288Q13 16.575 13 17t-.287.712Q12.425 18 12 18Zm-4 0q-.425 0-.713-.288Q7 17.425 7 17t.287-.712Q7.575 16 8 16t.713.288Q9 16.575 9 17t-.287.712Q8.425 18 8 18Zm8 0q-.425 0-.712-.288Q15 17.425 15 17t.288-.712Q15.575 16 16 16t.712.288Q17 16.575 17 17t-.288.712Q16.425 18 16 18Z" />
          </svg>
          <h3>Publicación</h3>
          <p id="txtPublicacion">18 de noviembre, 2022</p>
        </div>
      </div>

    </div>
  </div>
  <!--Sidebar-->
  <div class="Sidebar">
    <div class="Top">
      <div class="titulo">
        <h1>Menu</h1>
      </div>
      <svg class="svgSidebar" onclick="Abrir()" xmlns="http://www.w3.org/2000/svg" height="48" width="48">
        <path d="M6 36V33H42V36ZM6 25.5V22.5H42V25.5ZM6 15V12H42V15Z" />
      </svg>
    </div>
    <div class="Enlaces">      
      <nav id="menu">
        <ul>
          <li><a href="index.php?page=mnt-index"><i class="fas fa-sign-out-alt"></i>&nbsp;Inicio</a></li>          
          {{foreach NAVIGATION}}
          <li><a href="{{nav_url}}">{{nav_label}}</a></li>
          {{endfor NAVIGATION}}
          <li><a href="index.php?page=sec_logout"><i class="fas fa-sign-out-alt"></i>&nbsp;Salir</a></li>
        </ul>
      </nav>
    </div>
  </div>
  <div class="Contenedor">
    <main>    
      {{{page_content}}}
    </main>
  </div>
  <footer>
    <div>Todo los Derechos Reservados 2023 &copy;</div>
  </footer>
  {{foreach EndScripts}}
  <script src="/{{~BASE_DIR}}/{{this}}"></script>
  {{endfor EndScripts}}
  <script src="/{{~BASE_DIR}}/public/js/funcionBotones.js"></script>
  <script src="/{{~BASE_DIR}}/public/js/sidebar.js"></script>
  <script src="/{{~BASE_DIR}}/public/js/presentarBooks.js"></script>
</body>

</html>
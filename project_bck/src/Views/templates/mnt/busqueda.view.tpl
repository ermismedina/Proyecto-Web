<section class="ContenedorPrincipalPortada">
    <div class="imgPortada"></div>
    <p>
        ¡Descubre un mundo de entretenimiento en nuestro videoclub virtual! Sumérgete en emocionantes películas,
    </p>
    <p>
        series y documentales sin límites. Encuentra tu próxima aventura audiovisual entre nuestras estanterías virtuales y
    </p>
    <p>
        déjate llevar por las historias en la comodidad de tu hogar. ¡Explora, disfruta y sumérgete en el cine con nosotros!</p>
    </p>
    <p></p>
    <h1>Un videoclub es tu ventana al mundo del cine</h1>    
</section>



<section class="ContenedorSeccionSeparador">
    <p>Peliculas</p>
    <div class="BarraBusqueda">      
      <input type="text" placeholder="Buscar Peliculas" onfocus="this.placeholder=''"
        onblur="this.placeholder='Buscar Pelicula'" id="txtSearch" autocomplete="off">
      <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" onclick="SearchLibro()">
        <path d="m19.6 21-6.3-6.3q-.75.6-1.725.95Q10.6 16 9.5 16q-2.725 0-4.612-1.887Q3 12.225 3 9.5q0-2.725 1.888-4.613Q6.775 3 9.5 3t4.613 1.887Q16 6.775 16 9.5q0 1.1-.35 2.075-.35.975-.95 1.725l6.3 6.3ZM9.5 14q1.875 0 3.188-1.312Q14 11.375 14 9.5q0-1.875-1.312-3.188Q11.375 5 9.5 5 7.625 5 6.312 6.312 5 7.625 5 9.5q0 1.875 1.312 3.188Q7.625 14 9.5 14Z" />
      </svg>
    </div> 
</section>

<input type="hidden" name="mode" value="{{mode}}" />
<input type="hidden" name="Busqueda" value="{{Busqueda}}" />

<section class="ContenedorDeBusqueda">       
    
    {{foreach LibrosEncontrados}}    
     <div class="boxPopsAniBus">
             <div class="img256" style="background-image: url({{Imagen64}})"></div>

            <button class="transparent-button" role="button" onclick="Agregar( '{{Titulo}}',{{ID}})"><span
                    class="text"></span><span>Comprar</span></button>
            <button class="transparent-button" role="button"
                onclick="OpenModal('{{Titulo}}', '{{Contenido}}', '{{Autor}}', '{{Genero}}', '{{Idioma}}', '{{Fecha}}', '{{Precio}}', {{ID}})"><span
                    class="text"></span><span>Detalles</span></button>
        </div>
    {{endfor LibrosEncontrados}}
    
</section>


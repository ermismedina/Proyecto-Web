<section class="ContenedorPrincipalPortada2 Animado">
    
    <div class="imgPortada2"></div>
    <div class="ContenidoPortada2">
        <p>Sumérgete en la diversidad de emociones en cada género.</p>
        <h1>Explora Nuestros Universos Cinematográficos</h1>
        <input type="button" value="Todas las Peliculas" onclick="Explorar()" > <br>
    </div>
        
</section>
<section class="ContenedorSeccionSeparador"> <h3>Todas las peliculas existentes</h3>  </section>
<section class="ContenedorBooks">
    {{foreach LibrosRecientes}}
    <div class="box Animado">
        <img class="img255" src="{{Imagen64}}" alt="">
        <button class="transparent-button" role="button" onclick="Agregar( '{{Titulo}}',{{ID}})"><span
                class="text"></span><span>Comprar</span></button>        
        <button class="transparent-button" role="button"
            onclick="OpenModal('{{Titulo}}', '{{Contenido}}', '{{Autor}}', '{{Genero}}', '{{Idioma}}', '{{Fecha}}', '{{Precio}}', {{ID}})"><span
            class="text"></span><span>Detalles</span></button>
    </div>
    {{endfor LibrosRecientes}}  
</section>


<section class="ContenedorPrincipalBoxes Animado">
    {{foreach LibrosPopulares}}
    <div class="CajaA1">
        <img class="imgCA" src="{{Imagen64}}" alt="Portada Imagen">
        <div class="GeneroLibro">
            <p></p>
        </div>
        <div class="PequenaInfo">
            <p></p>
        </div>
        <div class="ContenedorBotonCajaA1">
            <button class="transparent-button" role="button" onclick="Agregar( '{{Titulo}}',{{ID}})"><span
                    class="text"></span><span>Comprar</span></button>            
            <button class="transparent-button" role="button"
                onclick="OpenModal('{{Titulo}}', '{{Contenido}}', '{{Autor}}', '{{Genero}}', '{{Idioma}}', '{{Fecha}}', '{{Precio}}', {{ID}})"><span
                    class="text"></span><span>Detalles</span></button>
        </div>
    </div>
    {{endfor LibrosPopulares}}
</section>


</section>

{{foreach LibrosPublicidad2}}
<section class="ContenedorVista Animado">
    <div class="Fondo">
        <img src="{{Imagen64}}" class="imgContenedorVista" alt="">
        <div class="Titulo">
            <h1>{{Titulo}}</h1>
            <h3>{{Autor}}</h3>
        </div>
        <div class="InformacionPublicidad">
            <div class="Informacion">
                <h1>O</h1>
                <p>{{Contenido}}</p>
            </div>

            <div class="Continuar">
                <button class="transparent-button" role="button" onclick="Agregar( '{{Titulo}}',{{ID}})"><span
                        class="text">Pagar</span><span>Comprar</span></button>                
            </div>
        </div>
    </div>
</section>
{{endfor LibrosPublicidad2}}





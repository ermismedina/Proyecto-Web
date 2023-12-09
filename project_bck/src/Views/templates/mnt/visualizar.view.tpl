<section class="ContenedorVisualizar">
    {{foreach Libro}}
    <div class="ContenedorImg">
        <div class="box">
            <img class="img255" src="{{Imagen64}}" alt="">
        </div>
    </div>
    <div class="ContenedorinforCompra">        
        <div class="CajaGrande2">            
            <div class="Cajita2">
                <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24">
                    <path d="M10.5 20V7H5V4h14v3h-5.5v13Z" />
                </svg>
                <h3>Titulo</h3>
                <p>{{Titulo}}</p>
            </div>

            <div class="Cajita2">
                <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" onclick="BusquedaAutor(2)">
                    <path d="M12 12q-1.65 0-2.825-1.175Q8 9.65 8 8q0-1.65 1.175-2.825Q10.35 4 12 4q1.65 0 2.825 1.175Q16 6.35 16 8q0 1.65-1.175 2.825Q13.65 12 12 12Zm-8 8v-2.8q0-.85.438-1.563.437-.712 1.162-1.087 1.55-.775 3.15-1.163Q10.35 13 12 13t3.25.387q1.6.388 3.15 1.163.725.375 1.162 1.087Q20 16.35 20 17.2V20Zm2-2h12v-.8q0-.275-.137-.5-.138-.225-.363-.35-1.35-.675-2.725-1.013Q13.4 15 12 15t-2.775.337Q7.85 15.675 6.5 16.35q-.225.125-.362.35-.138.225-.138.5Zm6-8q.825 0 1.413-.588Q14 8.825 14 8t-.587-1.412Q12.825 6 12 6q-.825 0-1.412.588Q10 7.175 10 8t.588 1.412Q11.175 10 12 10Zm0-2Zm0 10Z" />
                </svg>
                <h3>Autor</h3>
                <p id="txtAutor2">{{Autor}}</p>
            </div>

                <div class="Cajita2">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24">
                        <path d="m11.9 22 4.55-12h2.1l4.55 12H21l-1.05-3.05H15.1L14 22Zm3.8-4.8h3.6l-1.75-4.95h-.1ZM4 19l-1.4-1.4 5.05-5.05q-.95-1.05-1.662-2.175Q5.275 9.25 4.75 8h2.1q.45.9.963 1.625.512.725 1.237 1.525 1.1-1.2 1.825-2.462Q11.6 7.425 12.1 6H1V4h7V2h2v2h7v2h-2.9q-.525 1.775-1.425 3.45-.9 1.675-2.225 3.15l2.4 2.45-.75 2.05L9 14Z" />
                    </svg>
                    <h3>Idioma</h3>
                    <p>{{Idioma}}</p>
                </div>

                <div class="Cajita2">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" onclick="BusquedaGenero(2)">
                        <path d="M12 20q-1.2-.95-2.6-1.475Q8 18 6.5 18q-1.05 0-2.062.275-1.013.275-1.938.775-.525.275-1.012-.025Q1 18.725 1 18.15V6.1q0-.275.138-.525.137-.25.412-.375 1.15-.6 2.4-.9Q5.2 4 6.5 4q1.45 0 2.838.375Q10.725 4.75 12 5.5v12.1q1.275-.8 2.675-1.2 1.4-.4 2.825-.4.9 0 1.763.15.862.15 1.737.45v-12q.375.125.738.262.362.138.712.338.275.125.413.375.137.25.137.525v12.05q0 .575-.487.875-.488.3-1.013.025-.925-.5-1.938-.775Q18.55 18 17.5 18q-1.5 0-2.9.525T12 20Zm2-5V5.5l5-5v10Zm-4 1.625v-9.9q-.825-.35-1.712-.537Q7.4 6 6.5 6q-.925 0-1.8.175T3 6.7v9.925q.875-.325 1.738-.475Q5.6 16 6.5 16t1.762.15q.863.15 1.738.475Zm0 0v-9.9Z" />
                    </svg>
                    <h3>Genero</h3>
                    <p id="txtGenero2">{{Genero}}</p>
                </div>              
            <div class="Cajita1">                                
                <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24"><path d="M7 17h7v-2H7Zm0-4h10v-2H7Zm0-4h10V7H7ZM5 21q-.825 0-1.413-.587Q3 19.825 3 19V5q0-.825.587-1.413Q4.175 3 5 3h14q.825 0 1.413.587Q21 4.175 21 5v14q0 .825-.587 1.413Q19.825 21 19 21Zm0-2h14V5H5v14ZM5 5v14V5Z"/></svg>
                <h3>Sipnosis</h3>
                <p>{{Contenido}}</p>
            </div>              
        </div>

        <div class="ContendorCompraOpciones">                    
            <button class="btnCompraCancelar" role="button" onclick="IrAtras()">Regresar</button>            
        </div>
    </div>
    </div>

    <div class="Comentarios">
        <h1>Comentarios</h1>
    </div>

    {{endfor Libro}}
</section>
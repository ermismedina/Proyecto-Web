<section class="ContenedorCompra">
    {{foreach Compra}}
    <div class="ContenedorImg">
        <div class="box">
            <img class="img255" src="{{Imagen64}}" alt="">
        </div>
    </div>
    <form action="index.php?page=mnt_compra" method="post">
        <input type="hidden" name="crsf_token" value="{{~crsf_token}}" />
        <input type="hidden" name="mode" value="{{~mode}}" />
        <input type="hidden" name="ID" value="{{ID}}" />
        
        <div class="ContenedorinforCompra">
            <h1>Carretilla</h1>
            <div class="CajaGrande1">
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
                        <path d="M14 13q-1.25 0-2.125-.875T11 10q0-1.25.875-2.125T14 7q1.25 0 2.125.875T17 10q0 1.25-.875 2.125T14 13Zm-7 3q-.825 0-1.412-.588Q5 14.825 5 14V6q0-.825.588-1.412Q6.175 4 7 4h14q.825 0 1.413.588Q23 5.175 23 6v8q0 .825-.587 1.412Q21.825 16 21 16Zm2-2h10q0-.825.587-1.413Q20.175 12 21 12V8q-.825 0-1.413-.588Q19 6.825 19 6H9q0 .825-.588 1.412Q7.825 8 7 8v4q.825 0 1.412.587Q9 13.175 9 14Zm11 6H3q-.825 0-1.412-.587Q1 18.825 1 18V7h2v11h17ZM7 14V6v8Z" />
                    </svg>
                    <h3>Precio</h3>
                    <p>{{Precio}}.lps</p>
                </div>

            </div>

            <div class="ContendorCompraOpciones">                                                
                <button class="btnCompra" role="button" type="submit">Realizar Compra</button>
                <button class="btnCompraCancelar" role="button" onclick="IrAtras()">Cancelar</button>
            </div>
        </div>
    </form>
   

    {{endfor Compra}}
</section>
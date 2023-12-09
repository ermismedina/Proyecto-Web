<section class="ContenedorCompras">
    <div class="Caja1">
        {{foreach CantidadPeliculas}}
        <p>Mis Peliculas ({{CantidadPeliculas}})</p>
        {{endfor CantidadPeliculas}}
    </div>
    <div class="Caja2">
        <a href="index.php?page=mnt-index">Buscar más Peliculas </a>
        <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" style="margin-right: 5%;" onclick="location.href='index.php?page=mnt-index'"><path d="m12 10-1.4-1.4L12.175 7H8V5h4.175l-1.6-1.6L12 2l4 4ZM7 22q-.825 0-1.412-.587Q5 20.825 5 20q0-.825.588-1.413Q6.175 18 7 18t1.412.587Q9 19.175 9 20q0 .825-.588 1.413Q7.825 22 7 22Zm10 0q-.825 0-1.412-.587Q15 20.825 15 20q0-.825.588-1.413Q16.175 18 17 18t1.413.587Q19 19.175 19 20q0 .825-.587 1.413Q17.825 22 17 22ZM1 4V2h3.275l4.25 9h7l3.9-7H21.7l-4.4 7.95q-.275.5-.738.775Q16.1 13 15.55 13H8.1L7 15h12v2H7q-1.125 0-1.713-.975-.587-.975-.037-1.975L6.6 11.6 3 4Z"/></svg>
    </div>
</section>

<section class="Detalle">
    <div class="BoxSvg">
        <p>Mis Peliculas</p>
        <svg xmlns="http://www.w3.org/2000/svg" height="48" width="48" onclick="Peliculas()"><path d="M24 40 8 24l2.1-2.1 12.4 12.4V8h3v26.3l12.4-12.4L40 24Z"/></svg>
    </div>

    {{foreach CargarPeliculas}}
    <div class="BoxDetalle">

        <div class="imgDetalle" style="background-image: url({{Imagen64}});"></div>
        <div class="BoxInformacion">
            <div class="Cajita">
                <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24">
                    <path d="M10.5 20V7H5V4h14v3h-5.5v13Z" />
                </svg>
                <h3>Titulo</h3>
                <p>{{Titulo}}</p>
            </div>

            <div class="Cajita">
                <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24">
                    <path d="M12 12q-1.65 0-2.825-1.175Q8 9.65 8 8q0-1.65 1.175-2.825Q10.35 4 12 4q1.65 0 2.825 1.175Q16 6.35 16 8q0 1.65-1.175 2.825Q13.65 12 12 12Zm-8 8v-2.8q0-.85.438-1.563.437-.712 1.162-1.087 1.55-.775 3.15-1.163Q10.35 13 12 13t3.25.387q1.6.388 3.15 1.163.725.375 1.162 1.087Q20 16.35 20 17.2V20Zm2-2h12v-.8q0-.275-.137-.5-.138-.225-.363-.35-1.35-.675-2.725-1.013Q13.4 15 12 15t-2.775.337Q7.85 15.675 6.5 16.35q-.225.125-.362.35-.138.225-.138.5Zm6-8q.825 0 1.413-.588Q14 8.825 14 8t-.587-1.412Q12.825 6 12 6q-.825 0-1.412.588Q10 7.175 10 8t.588 1.412Q11.175 10 12 10Zm0-2Zm0 10Z" />
                </svg>
                <h3>Autor</h3>
                <p>{{Autor}}</p>
            </div>


            <div class="Cajita">
                <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24">
                    <path d="M14 13q-1.25 0-2.125-.875T11 10q0-1.25.875-2.125T14 7q1.25 0 2.125.875T17 10q0 1.25-.875 2.125T14 13Zm-7 3q-.825 0-1.412-.587Q5 14.825 5 14V6q0-.825.588-1.412Q6.175 4 7 4h14q.825 0 1.413.588Q23 5.175 23 6v8q0 .825-.587 1.412Q21.825 16 21 16Zm-4 1.625v-9.9q-.825-.35-1.712-.537Q7.4 6 6.5 6q-.925 0-1.8.175T3 6.7v9.925q.875-.325 1.738-.475Q5.6 16 6.5 16t1.762.15q.863.15 1.738.475Zm0 0v-9.9Z" />
                </svg>
                <h3>Genero</h3>
                <p>{{Genero}}</p>
            </div>
            <div class="Cajita">
                <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24">
                    <path d="M5 22q-.825 0-1.413-.587Q3 20.825 3 20V6q0-.825.587-1.412Q4.175 4 5 4h1V2h2v2h8V2h2v2h1q.825 0 1.413.588Q21 5.175 21 6v14q0 .825-.587 1.413Q19.825 22 19 22Zm0-2h14V10H5v10ZM5 8h14V6H5Zm0 0V6v2Zm7 6q-.425 0-.712-.288Q11 13.425 11 13t.288-.713Q11.575 12 12 12t.713.287Q13 12.575 13 13t-.287.712Q12.425 14 12 14Zzm-4 0q-.425 0-.713-.288Q7 13.425 7 13t.287-.713Q7.575 12 8 12t.713.287Q9 12.575 9 13t-.287.712Q8.425 14 8 14Zzm8 0q-.425 0-.712-.288Q15 13.425 15 13t.288-.713Q15.575 12 16 12t.712.288Q17 12.575 17 13t-.288.712Q16.425 14 16 14Zzm-4 4q-.425 0-.712-.288Q11 17.425 11 17t.288-.712Q11.575 16 12 16t.713.288Q13 16.575 13 17t-.287.712Q12.425 18 12 18Zzm-4 0q-.425 0-.713-.288Q7 17.425 7 17t.287-.712Q7.575 16 8 16t.713.288Q9 16.575 9 17t-.287.712Q8.425 18 8 18Zzm8 0q-.425 0-.712-.288Q15 17.425 15 17t.288-.712Q15.575 16 16 16t.712.288Q17 16.575 17 17t-.288.712Q16.425 18 16 18Z" />
                </svg>
                <h3>Precio</h3>
                <p>{{Precio}}</p>
            </div>
        </div>
    </div>
    {{endfor CargarPeliculas}}
</section>

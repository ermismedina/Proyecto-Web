<section class="Filtro">
    <label for="Filtrado">Filtrado</label>
    <input type="text" value="" class="txtID" id="txtID">  
    <svg xmlns="http://www.w3.org/2000/svg" height="40" width="40" class="SVGProducts" onclick="SearchAddPeliculas()"><path d="M33 34.958 22.208 24.167q-1.25 1.041-2.916 1.645-1.667.605-3.5.605-4.542 0-7.667-3.125T5 15.708q0-4.458 3.125-7.604t7.625-3.146q4.458 0 7.583 3.146t3.125 7.604q0 1.792-.583 3.438-.583 1.646-1.708 3.062L35 32.958ZM15.75 23.625q3.292 0 5.604-2.313 2.313-2.312 2.313-5.604 0-3.291-2.313-5.625Q19.042 7.75 15.75 7.75q-3.333 0-5.646 2.333-2.312 2.334-2.312 5.625 0 3.292 2.312 5.604 2.313 2.313 5.646 2.313Z"/></svg>
    <fieldset>
      <button class="btnCancelar" name="btnCancelar" id="btnCancelar">
          <svg xmlns="http://www.w3.org/2000/svg" height="45" width="45" viewBox="0 0 24 24">
              <path fill="#ffffff" d="M12 2C6.478 2 2 6.478 2 12s4.478 10 10 10c1.575 0 3.075-.36 4.414-1.028l-1.699-1.696c-.864.457-1.867.724-2.916.724-4.418 0-8-3.582-8-8s3.582-8 8-8 8 3.582 8 8h-2v-4h6v6h-4v-2c0-4.41-3.59-8-8-8z"/>
          </svg>
      </button>
  </fieldset>
  
</section>

<section style="width: 95%; margin: auto;">
  <table style="width: 100%;">
    <thead style="text-align: center; width: 300px; width: 300px;">
      <tr>
        <th>ID</th>
        <th>Título</th>        
        <th>Fecha</th>                
        <th>Género</th>                
        <th>Autor</th>                
        <th>Idioma</th>                
        <th>Precio</th>                
        <th>
          <svg xmlns="http://www.w3.org/2000/svg" height="40" width="40" class="SVGProducts" onclick="Add()"><path d="M18.708 28.333h2.75V21.5h6.875v-2.792h-6.875v-7.041h-2.75v7.041h-7.041V21.5h7.041ZM20 36.667q-3.458 0-6.479-1.313-3.021-1.312-5.292-3.583t-3.583-5.292Q3.333 23.458 3.333 20t1.313-6.5q1.312-3.042 3.583-5.292t5.292-3.562Q16.542 3.333 20 3.333t6.5 1.313q3.042 1.312 5.292 3.562t3.562 5.292q1.313 3.042 1.313 6.5t-1.313 6.479q-1.312 3.021-3.562 5.292T26.5 35.354q-3.042 1.313-6.5 1.313Zm0-2.792q5.792 0 9.833-4.042 4.042-4.041 4.042-9.833t-4.021-9.833Q25.833 6.125 20 6.125q-5.792 0-9.833 4.021Q6.125 14.167 6.125 20q0 5.792 4.042 9.833 4.041 4.042 9.833 4.042ZM20 20Z"/>                    
        </svg></th>        
      </tr>
    </thead>
    <tbody >
      {{foreach Peliculas}}
      <tr style="text-align: center;">
        <td>{{ID}}</td>        
        <td>{{Título}}</td>                
        <td>{{Fecha}}</td>      
        <td>{{Género}}</td>      
        <td>{{Autor}}</td>      
        <td>{{Idioma}}</td>      
        <td>{{Precio}}</td>           
        <td>
          <svg xmlns="http://www.w3.org/2000/svg" height="40" width="40" class="SVGProducts" id="btnEdit" onclick="Edit({{ID}})"><path d="M7.792 32.208h2l17.083-17.083-2-2L7.792 30.208Zm25-19.083L26.875 7.25l1.917-1.958q.791-.792 1.958-.792 1.167 0 1.958.792l2 2q.792.791.813 1.937.021 1.146-.771 1.938Zm-2 2L10.917 35H5v-5.917L24.875 9.208Zm-4.917-1-1-1 2 2Z"/></svg>
        </td>        
      </tr>
      {{endfor Peliculas}}
    </tbody>
  </table>
</section>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('btnCancelar').addEventListener('click', function (e) {
      e.preventDefault();
      e.stopPropagation();
      window.location.href = 'index.php?page=mnt_peliculas';
    });
  });
</script>

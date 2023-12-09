<div style="display: flex; justify-content: center;">
    <form action="index.php?page=mnt_addpelicula" method="post" enctype="multipart/form-data" style="display: flex; justify-content: center;">
     
      <input type="hidden" name="mode" value="{{mode}}" />
      <input type="hidden" name="crsf_token" value="{{crsf_token}}" />
      <input type="hidden" name="ID" value="{{ID}}" />
      <div class="Box1" style="margin-bottom: 15px; flex: 1; margin-right: 20px;">
        <h4>{{mode_desc}}</h4>
        <div style="display: flex; align-items: center;">
          <label for="Titulo" style="margin-right: 10px;">Titulo</label>
          <input type="text" autocomplete="off" {{if readonly}} readonly {{endif readonly}} name="Titulo" id="Titulo" value="{{Titulo}}" style="flex: 1; padding: 8px; border: 1px solid #ccc; border-radius: 3px; margin-bottom: 10px;">
        </div>
        {{if error_Titulo}}
        {{foreach error_Titulo}}
        <div class="error">{{this}}</div>
        {{endfor error_Titulo}}
        {{endif error_Titulo}}
        
        <label for="Autor" style="display: flex; align-items: center; margin-bottom: 10px;">
          Autor
          <input type="text" autocomplete="off" {{if readonly}} readonly {{endif readonly}} name="Autor" id="Autor" value="{{Autor}}" style="flex: 1; padding: 8px; border: 1px solid #ccc; border-radius: 3px; margin-left: 10px;">
        </label>
        {{if error_Autor}}
        {{foreach error_Autor}}
        <div class="error">{{this}}</div>
        {{endfor error_Autor}}
        {{endif error_Autor}}
        
        <label for="Genero" style="display: flex; align-items: center; margin-bottom: 10px;">
          Genero
          <input type="text" autocomplete="off" {{if readonly}} readonly {{endif readonly}} name="Genero" id="Genero" value="{{Genero}}" style="flex: 1; padding: 8px; border: 1px solid #ccc; border-radius: 3px; margin-left: 10px;">
        </label>
        {{if error_Genero}}
        {{foreach error_Genero}}
        <div class="error">{{this}}</div>
        {{endfor error_Genero}}
        {{endif error_Genero}}
        
        <label for="Idioma" style="display: flex; align-items: center; margin-bottom: 10px;">
          Idioma
          <input type="text" autocomplete="off" {{if readonly}} readonly {{endif readonly}} name="Idioma" id="Idioma" value="{{Idioma}}" style="flex: 1; padding: 8px; border: 1px solid #ccc; border-radius: 3px; margin-left: 10px;">
        </label>
        {{if error_Idioma}}
        {{foreach error_Idioma}}
        <div class="error">{{this}}</div>
        {{endfor error_Idioma}}
        {{endif error_Idioma}}
        
        <label for="Precio" style="display: flex; align-items: center; margin-bottom: 10px;">
          Precio
          <input type="text" class="txtID" autocomplete="off" {{if readonly}} readonly {{endif readonly}} name="Precio" id="Precio" value="{{Precio}}" style="flex: 1; padding: 8px; border: 1px solid #ccc; border-radius: 3px; margin-left: 10px;">
        </label>
        {{if error_Precio}}
        {{foreach error_Precio}}
        <div class="error">{{this}}</div>
        {{endfor error_Precio}}
        {{endif error_Precio}}
        
        <label for="Fecha" style="display: flex; align-items: center; margin-bottom: 10px;">
          Fecha
          <input type="date" autocomplete="off" {{if readonly}} readonly {{endif readonly}} name="Fecha" id="Fecha" value="{{Fecha}}" style="flex: 1; padding: 8px; border: 1px solid #ccc; border-radius: 3px; margin-left: 10px;">
        </label>
        {{if error_Fecha}}
        {{foreach error_Fecha}}
        <div class="error">{{this}}</div>
        {{endfor error_Fecha}}
        {{endif error_Fecha}}
        
       
          <label for="Contenido">Contenido</label>
          <textarea name="Contenido" id="Contenido" {{if readonly}} readonly {{endif readonly}}cols="30" rows="30">{{Contenido}}</textarea>
          {{if error_Contenido}}
          {{foreach error_Contenido}}
          <div class="error">{{this}}</div>
          {{endfor error_Contenido}}
          {{endif error_Contenido}}
  
    
          <label for="Contenido">Portada</label>
          <input type="file" required {{if readonly}} disabled {{endif readonly}} name="image" id="image" class="pickerImg" />
            <fieldset>
              {{if showBtn}}
              <button class="btnEnviar" type="submit" name="btnEnviar">{{btnEnviarText}}</button>
              &nbsp;
              {{endif showBtn}}
              <button class="btnCancelar" name="btnCancelar" id="btnCancelar">Regresar</button>
            </fieldset>
      </div>
    </form>
  </div>
  
  <script>
    document.addEventListener('DOMContentLoaded', function () {
      document.getElementById('btnCancelar').addEventListener('click', function (e) {
        e.preventDefault();
        e.stopPropagation();
        window.location.href = 'index.php?page=mnt_peliculas';
      });
    });
  </script>
  
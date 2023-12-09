<section class="depth-1">  
</section>
<section style="width: 95%; margin: 5% 0%;">
  <table style="width: 100%;" >
    <thead  style="text-align: center; width: 300px; width: 300px;">
      <tr>
      <th>Código</th>
      <th>Correo</th>
      <th>Estado</th>
      <th>
        Acciones
      </th>
      </tr>
    </thead>
    <tbody>
      {{foreach Usuarios}}
      <tr style="text-align: center;">
        <td>{{usercod}}</td>
        <td>
          {{if ~CanView}}
          <a href="index.php?page=mnt_usuario&mode=DSP&id={{usercod}}">{{useremail}}</a>
          {{endif ~CanView}}

          {{ifnot ~CanView}}
              {{useremail}}
          {{endifnot ~CanView}}
        </td>
        <td>{{userest}}</td>
        <td>
          {{if ~CanUpdate}}   
            <span title="Editar Usuario">
              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="SVGProducts" id="btnEdit" onclick="location.href='index.php?page=mnt_usuario&mode=UPD&id={{usercod}}'"><path fill-rule="evenodd" d="M14.8024118,6.44526791 L8.69610276,12.549589 C8.29095108,12.9079238 8.04030835,13.4092335 8,13.8678295 L8,16.0029438 L10.0639829,16.004826 C10.5982069,15.9670062 11.0954869,15.7183782 11.4947932,15.2616227 L17.556693,9.19972295 L14.8024118,6.44526791 Z M16.2168556,5.0312846 L18.9709065,7.78550938 L19.8647941,6.89162181 C19.9513987,6.80501747 20.0000526,6.68755666 20.0000526,6.56507948 C20.0000526,6.4426023 19.9513987,6.32514149 19.8647932,6.23853626 L17.7611243,4.13485646 C17.6754884,4.04854589 17.5589355,4 17.43735,4 C17.3157645,4 17.1992116,4.04854589 17.1135757,4.13485646 L16.2168556,5.0312846 Z M22,13 L22,20 C22,21.1045695 21.1045695,22 20,22 L4,22 C2.8954305,22 2,21.1045695 2,20 L2,4 C2,2.8954305 2.8954305,2 4,2 L11,2 L11,4 L4,4 L4,20 L20,20 L20,13 L22,13 Z M17.43735,2 C18.0920882,2 18.7197259,2.26141978 19.1781068,2.7234227 L21.2790059,4.82432181 C21.7406843,5.28599904 22.0000526,5.91216845 22.0000526,6.56507948 C22.0000526,7.21799052 21.7406843,7.84415992 21.2790068,8.30583626 L12.9575072,16.6237545 C12.2590245,17.4294925 11.2689,17.9245308 10.1346,18.0023295 L6,18.0023295 L6,17.0023295 L6.00324765,13.7873015 C6.08843822,12.7328366 6.57866679,11.7523321 7.32649633,11.0934196 L15.6953877,2.72462818 C16.1563921,2.2608295 16.7833514,2 17.43735,2 Z" /></svg></span>                        
          {{endif ~CanUpdate}}          
          {{if ~CanView}}
            <span title="Historia De Trasacciones" onclick="Historial({{usercod}})"><svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" viewBox="0 0 24 24">
              <path d="M20 4h-4V2H8v2H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2zm-4 12H8v-2h8v2zm4-4H4V8h16v4z"/>
          </svg></span>
          {{endif ~CanUpdate}}          
          {{if ~CanView}}
            <span title="Historia de Transacciones" onclick="Historial({{usercod}})">
                <svg xmlns="http://www.w3.org/2000/svg" height="24" width="24" viewBox="0 0 24 24">
                    <path d="M20 4h-4V2H8v2H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2zm-4 12H8v-2h8v2zm4-4H4V8h16v4z"/>
                </svg>
            </span>
          {{endif ~CanView}}

        </td>
      </tr>
      {{endfor Usuarios}}
    </tbody>
  </table>
</section>

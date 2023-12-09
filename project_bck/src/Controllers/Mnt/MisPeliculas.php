<?php

namespace Controllers\Mnt;

use Controllers\PrivateController;
use Views\Renderer;
use Dao\Mnt\MisPeliculas as DaoMisPeliculas; // Cambio de "MisLibros" a "MisPeliculas"

class MisPeliculas extends PrivateController // Cambio de "MisLibros" a "MisPeliculas"
{
    private $viewData = array();

    public function run(): void
    {
        $userId = \Utilities\Security::getUserId();

        $MisPeliculas = DaoMisPeliculas::ObtenerMisPeliculas($userId); // Cambio de "ObtenerMisLibros" a "ObtenerMisPeliculas"

        $this->viewData["CargarPeliculas"] = array(); // Cambio de "CargarLibros" a "CargarPeliculas"

        foreach ($MisPeliculas as $Pelicula) { // Cambio de "$Lib" a "$Pelicula"
            $Pelicula['Imagen64'] = "data:image/jpg;base64," . base64_encode($Pelicula['Imagen']); // Cambio de "$Lib" a "$Pelicula"         
            $this->viewData["CargarPeliculas"][] = $Pelicula; // Cambio de "CargarLibros" a "CargarPeliculas"
        }

        $this->viewData["CantidadPeliculas"] = DaoMisPeliculas::CantidadPeliculas($userId); // Cambio de "CantidadLibros" a "CantidadPeliculas"

        error_log(json_encode($this->viewData));
        Renderer::render('mnt/mispeliculas', $this->viewData); // Cambio de "mnt/mislibros" a "mnt/mispeliculas"
    }
}

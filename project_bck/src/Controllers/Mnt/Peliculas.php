<?php

namespace Controllers\Mnt;

use Controllers\PrivateController;
use Views\Renderer;
use Utilities\Validators;
use Dao\Mnt\Peliculas as DaoPelicula; // Cambio de "Libros" a "Peliculas"

class Peliculas extends PrivateController // Cambio de "Libros" a "Peliculas"
{
    private $viewData = array();
    private $arrModeDesc = array();

    public function run(): void
    {

        $this->init();

        // Cuando es método GET (se llama desde la lista)
        if (!$this->isPostBack()) {
            $this->procesarGet();
        }

        error_log(json_encode($this->viewData));

        Renderer::render('mnt/peliculas', $this->viewData); // Cambio de 'mnt/libros' a 'mnt/peliculas'
    }

    private function init()
    {
        $this->viewData = array();

        $this->arrModeDesc = array(
            "DSP" => "Detalle de %s %s",
        );

        $this->viewData["Peliculas"] = DaoPelicula::getAll(); // Cambio de "Libros" a "Peliculas"
    }

    private function procesarGet()
    {
        if (isset($_GET["mode"])) {
            $this->viewData["mode"] = $_GET["mode"];

            if (!isset($this->arrModeDesc[$this->viewData["mode"]])) {
                error_log('Error: (Peliculas) Modo solicitado no existe.'); // Cambio de "(Libros)" a "(Peliculas)"
                \Utilities\Site::redirectToWithMsg(
                    "index.php?page=mnt_peliculas", // Cambio de "mnt_libros" a "mnt_peliculas"
                    "No se puede procesar su solicitud!"
                );
            }
        }

        if (isset($_GET["Busqueda"])) {
            $Pelicula = $_GET["Busqueda"]; // Cambio de "Libro" a "Pelicula"
            $this->viewData["Peliculas"] = DaoPelicula::buscarPelicula($Pelicula); // Cambio de "Libros" a "Peliculas"
        }
    }
}

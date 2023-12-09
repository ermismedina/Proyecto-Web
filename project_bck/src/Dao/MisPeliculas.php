<?php

namespace Dao\Mnt;

use Dao\Table;

class MisPeliculas extends Table // Cambio de "MisLibros" a "MisPeliculas"
{
    public static function Insert($Pelicula, $Usuario) // Cambio de "$Libro" a "$Pelicula"
    {
        $sqlstr = "INSERT INTO mispeliculas (`ID`, `IdPelicula`,`IdUsuario`) VALUES(:Pelicula, :Pelicula, :Usuario)"; // Cambio de "mislibros" a "mispeliculas" y de "IdLibro" a "IdPelicula"
        $sqlParams = array("Pelicula" => $Pelicula, "Usuario" => $Usuario); // Cambio de "Libro" a "Pelicula"
        return self::executeNonQuery($sqlstr, $sqlParams);
    }

    public static function ObtenerMisPeliculas(int $ID) // Cambio de "ObtenerMisLibros" a "ObtenerMisPeliculas"
    {
        $sqlstr = "
        select c.username as Usuario, a.IdUsuario ,b.* from Mispeliculas a inner join peliculasInventario b 
        ON a.IdPelicula = b.ID inner join Usuario c  ON c.usercod = a.IdUsuario where a.IdUsuario = :ID"; // Cambio de "MisLibros" a "MisPeliculas" y de "librosInventario" a "peliculasInventario"
        $sqlParams = array("ID" => $ID);
        return self::obtenerRegistros($sqlstr, $sqlParams);
    }

    public static function CantidadPeliculas(int $ID)
    { // Cambio de "CantidadLibros" a "CantidadPeliculas"
        $sqlstr = "
        select count(*) as CantidadPeliculas from Mispeliculas a inner join peliculasInventario b 
        ON a.IdPelicula = b.ID inner join Usuario c  ON c.usercod = a.IdUsuario where a.IdUsuario = :ID"; // Cambio de "MisLibros" a "MisPeliculas" y de "librosInventario" a "peliculasInventario"
        $sqlParams = array("ID" => $ID);
        return self::obtenerRegistros($sqlstr, $sqlParams);
    }
}

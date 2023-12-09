<?php

namespace Dao\Mnt;

use Dao\Table;

class MisPeliculas extends Table
{
    public static function Insert($Pelicula, $Usuario)
    {
        $sqlstr = "INSERT INTO mispeliculas (`ID`, `IdPelicula`, `IdUsuario`) VALUES(:Pelicula, :Pelicula, :Usuario)";
        $sqlParams = array("Pelicula" => $Pelicula, "Usuario" => $Usuario);
        return self::executeNonQuery($sqlstr, $sqlParams);
    }

    public static function ObtenerMisPeliculas(int $ID)
    {
        $sqlstr = "
        select c.username as Usuario, a.IdUsuario, b.* from MisPeliculas a inner join peliculasInventario b 
        ON a.IdPelicula = b.ID inner join Usuario c ON c.usercod = a.IdUsuario where a.IdUsuario = :ID";
        $sqlParams = array("ID" => $ID);
        return self::obtenerRegistros($sqlstr, $sqlParams);
    }

    public static function CantidadPeliculas(int $ID)
    {
        $sqlstr = "
        select count(*) as CantidadPeliculas from MisPeliculas a inner join peliculasInventario b 
        ON a.IdPelicula = b.ID inner join Usuario c ON c.usercod = a.IdUsuario where a.IdUsuario = :ID";
        $sqlParams = array("ID" => $ID);
        return self::obtenerRegistros($sqlstr, $sqlParams);
    }
}

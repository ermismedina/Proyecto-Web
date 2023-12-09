<?php

namespace Dao\Mnt;

use Dao\Table;

class Historial extends Table
{
    public static function getAll($userCode)
    {
        $sqlstr = "SELECT a.Titulo, a.Precio, b.Fecha from peliculasinventario a inner join transacciones b
        ON a.ID = b.Pelicula inner join Usuario c
        ON b.Usuario = c.usercod
        where c.usercod = :userCode";
        $sqlParams = array("userCode" => $userCode);
        return self::obtenerRegistros($sqlstr, $sqlParams);
    }

    public static function insert($Pelicula, $Usuario)
    {
        $sqlstr = "INSERT INTO `transacciones` ( `Pelicula`, `Usuario`) VALUES (:Pelicula, :Usuario)";
        $sqlParams = [
            "Pelicula" => $Pelicula,
            "Usuario" => $Usuario,
        ];
        return self::executeNonQuery($sqlstr, $sqlParams);
    }

    public static function Total($Usuario)
    {
        $sqlstr = "
        select sum(b.Precio) as Total from Transacciones a inner join PeliculasInventario b
        on a.Pelicula = b.ID  
        where a.Usuario =:Usuario";
        $sqlParams = array("Usuario" => $Usuario);
        return self::obtenerRegistros($sqlstr, $sqlParams);
    }


    public static function TotalPeliculas($Usuario)
    {
        $sqlstr = "
        select count(*) as Total from Transacciones a inner join PeliculasInventario b
        on a.Pelicula = b.ID  
        where a.Usuario = :Usuario";
        $sqlParams = array("Usuario" => $Usuario);
        return self::obtenerRegistros($sqlstr, $sqlParams);
    }
}

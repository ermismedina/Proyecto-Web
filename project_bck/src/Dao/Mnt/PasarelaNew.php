<?php

namespace Dao\Mnt;

use Dao\Table;

class Pasarela extends Table
{
    public static function ObtenerPelicula(int $ID)
    {
        $sqlstr = "SELECT * FROM carrito where Pelicula = :ID";
        $sqlParams = array("ID" => $ID);
        return self::obtenerUnRegistro($sqlstr, $sqlParams);
    }


    public static function insert($Pelicula, $Usuario)
    {
        $sqlstr = "INSERT INTO `Carrito` ( `Pelicula`, `Usuario`) VALUES (:Pelicula, :Usuario)";
        $sqlParams = [
            "Pelicula" => $Pelicula,
            "Usuario" => $Usuario,
        ];
        return self::executeNonQuery($sqlstr, $sqlParams);
    }

    public static function insertAnon($Pelicula, $Usuario, $Sesion)
    {
        $sqlstr = "INSERT INTO `Carrito` (`Pelicula`, `Usuario`, `Sesion`) VALUES (:Pelicula, :Usuario, :Sesion)";
        $sqlParams = [
            "Pelicula" => $Pelicula,
            "Usuario" => $Usuario,
            "Sesion" => $Sesion
        ];
        return self::executeNonQuery($sqlstr, $sqlParams);
    }


    public static function Delete($Pelicula, $Usuario)
    {
        $sqlstr = "DELETE from carrito where Pelicula = :Pelicula and Usuario = :Usuario";
        $sqlParams = [
            "Pelicula" => $Pelicula,
            "Usuario" => $Usuario,
        ];
        return self::executeNonQuery($sqlstr, $sqlParams);
    }

    public static function DeleteSesion($IdSesion)
    {
        $sqlstr = "DELETE from carrito where ID = :IdSesion";
        $sqlParams = [
            "IdSesion" => $IdSesion,
        ];
        return self::executeNonQuery($sqlstr, $sqlParams);
    }


    public static function CargarCarritoAnon($Sesion)
    {
        $sqlstr = "
        select b.ID, a.Sesion, a.Usuario, b.Titulo, b.Autor, b.Genero, b.Imagen, b.Genero, b.Idioma, b.Precio, b.Fecha from Carrito a inner join PeliculasInventario b
        on a.Pelicula = b.ID 
        where a.Sesion = :Sesion";
        $sqlParams = array("Sesion" => $Sesion);
        return self::obtenerRegistros($sqlstr, $sqlParams);
    }

    public static function CargarCarrito($Usuario)
    {
        $sqlstr = "
        select b.ID, a.Sesion, a.Usuario, b.Titulo, b.Autor, b.Genero, b.Imagen, b.Genero, b.Idioma, b.Precio, b.Fecha from Carrito a inner join PeliculasInventario b
        on a.Pelicula = b.ID 
        where a.Usuario = :Usuario";
        $sqlParams = array("Usuario" => $Usuario);
        return self::obtenerRegistros($sqlstr, $sqlParams);
    }


    public static function CarritoTotal($Usuario)
    {
        $sqlstr = "
        select sum(b.Precio) as Total from Carrito a inner join PeliculasInventario b
        on a.Pelicula = b.ID  
        where a.Usuario = :Usuario";
        $sqlParams = array("Usuario" => $Usuario);
        return self::obtenerRegistros($sqlstr, $sqlParams);
    }
    public static function CarritoCount($Usuario)
    {
        $sqlstr = "
        select count(*) as PeliculasCarrito from Carrito a inner join PeliculasInventario b
        on a.Pelicula = b.ID 
        where a.Usuario = :Usuario";
        $sqlParams = array("Usuario" => $Usuario);
        return self::obtenerUnRegistro($sqlstr, $sqlParams);
    }
    public static function getById($Sesion)
    {
        $sqlstr = "SELECT b.ID from Carrito a inner join PeliculasInventario b
        on a.Pelicula = b.ID 
        where a.Sesion = :Sesion";
        $sqlParams = array("Sesion" => $Sesion);
        return self::obtenerUnRegistro($sqlstr, $sqlParams);
    }
    public static function getIdSesion($Sesion)
    {
        $sqlstr = "SELECT ID from Carrito where Sesion = :Sesion";
        $sqlParams = array("Sesion" => $Sesion);
        return self::obtenerUnRegistro($sqlstr, $sqlParams);
    }
}

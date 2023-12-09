<?php

namespace Dao\Mnt;

use Dao\Table;
use Monolog\Handler\WhatFailureGroupHandler;

/**
 * Clase base Para Peliculas
 * también se modifica lo que se muestra en las pantallas de películas favoritas
 */

class Peliculas extends Table // Cambio de "Libros" a "Peliculas"
{
    public static function getAll()
    {
        $sqlstr = "SELECT * FROM peliculas.peliculasinventario;"; // Cambio de "libros.librosinventario" a "peliculas.peliculasinventario"
        return self::obtenerRegistros($sqlstr, array());
    }

    public static function PeliculasRecientes() // Cambio de "LibrosRecientes" a "PeliculasRecientes"
    {
        $sqlstr = "SELECT * from peliculasInventario 
        where PublicidadEspecial  = 'NOACT' and Genero != 'Aventura'
        order by ID Desc limit 0,3";
        return self::obtenerRegistros($sqlstr, array());
    }

    public static function PeliculasPopulares() // Cambio de "LibrosPopulares" a "PeliculasPopulares"
    {
        $sqlstr = "SELECT  * from peliculasInventario 
        where PublicidadEspecial  = 'NOACT' and Genero != 'Aventura'
        order by Popularidad Desc limit 0,6";
        return self::obtenerRegistros($sqlstr, array());
    }

    public static function PeliculasPublicidad() // Cambio de "LibrosPublicidad" a "PeliculasPublicidad"
    {
        $sqlstr = "SELECT  * from peliculasInventario 
        where PublicidadEspecial  = 'ACT'
        order by Popularidad ASC limit 0,2";
        return self::obtenerRegistros($sqlstr, array());
    }

    public static function PeliculasPublicidad2() // Cambio de "LibrosPublicidad2" a "PeliculasPublicidad2"
    {
        $sqlstr = "SELECT  * from peliculasInventario 
        where PublicidadEspecial  = 'ACT'
        order by Popularidad ASC limit 4,2";
        return self::obtenerRegistros($sqlstr, array());
    }

    public static function Mangas()
    {
        $sqlstr = "SELECT * from peliculasInventario 
        where Genero  = 'Aventura'
        order by Popularidad Desc limit 0,4";
        return self::obtenerRegistros($sqlstr, array());
    }

    public static function Mangas2()
    {
        $sqlstr = "SELECT * from peliculasInventario 
        where Genero  = 'Aventura'
        order by Popularidad Desc limit 4,12";
        return self::obtenerRegistros($sqlstr, array());
    }

    public static function getById(int $ID)
    {
        $sqlstr = "SELECT * from `peliculasinventario` where ID=:ID;";
        $sqlParams = array("ID" => $ID);
        return self::obtenerUnRegistro($sqlstr, $sqlParams);
    }

    public static function obtenerPelicula(int $ID)
    {
        $sqlstr = "SELECT * from `peliculasinventario` where ID =:ID;";
        $sqlParams = array("ID" => $ID);
        return self::obtenerRegistros($sqlstr, $sqlParams);
    }

    public static function obtenerPelicula2(int $ID)
    {
        $sqlstr = "SELECT * from `peliculasinventario` where ID =:ID;";
        $sqlParams = array("ID" => $ID);
        return self::obtenerUnRegistro($sqlstr, $sqlParams);
    }

    public static function buscarPelicula($Nombre)
    {
        $sqlstr = "SELECT * from peliculasInventario
        where Genero like :Nombre or Autor like :Nombre or Titulo like :Nombre
        order by Genero
         ";
        $sqlParams = array("Nombre" => "%" . $Nombre . "%");
        return self::obtenerRegistros($sqlstr, $sqlParams);
    }

    public static function ObtenerGenerosSeccion($Nombre)
    {
        $sqlstr = "SELECT * from peliculasInventario
        where Genero like :Nombre";
        $sqlParams = array("Nombre" => "%" . $Nombre . "%");
        return self::obtenerRegistros($sqlstr, $sqlParams);
    }

    public static function insert(
        $Imagen,
        $Imagen2,
        $Titulo,
        $Autor,
        $Contenido,
        $Fecha,
        $Genero,
        $Idioma,
        $Precio,
        $PublicidadEspecial,
    ) {
        $sqlstr = "INSERT INTO `peliculasInventario` (`Imagen`, `Imagen2`,`Titulo`, `Autor`, `Contenido`, `Fecha`, `Genero`, `Idioma`, `Precio`, `PublicidadEspecial`) VALUES(:Imagen, :Imagen2, :Titulo, :Autor, :Contenido, :Fecha, :Genero, :Idioma, :Precio, :PublicidadEspecial);";
        $sqlParams = [
            "Imagen" => $Imagen,
            "Imagen2" => $Imagen2,
            "Titulo" => $Titulo,
            "Autor" => $Autor,
            "Contenido" => $Contenido,
            "Fecha" => $Fecha,
            "Genero" => $Genero,
            "Idioma" => $Idioma,
            "Precio" => $Precio,
            "PublicidadEspecial" => $PublicidadEspecial,
        ];
        return self::executeNonQuery($sqlstr, $sqlParams);
    }


    public static function update(
        $Imagen,
        $Imagen2,
        $Titulo,
        $Autor,
        $Contenido,
        $Genero,
        $Idioma,
        $Precio,
        $Fecha,
        $PublicidadEspecial,
        $ID
    ) {
        $sqlstr = "UPDATE `peliculasInventario` set 
        `Titulo` = :Titulo, `Autor` = :Autor , `Contenido` = :Contenido, `Genero` =:Genero , `Idioma` = :Idioma, `Precio`= :Precio, `Fecha` = :Fecha, `PublicidadEspecial` = :PublicidadEspecial, `Imagen` = :Imagen, `Imagen2` = :Imagen2  where `ID` = :ID;";
        $sqlParams = array(
            "Imagen" => $Imagen,
            "Imagen2" => $Imagen2,
            "Titulo" => $Titulo,
            "Autor" => $Autor,
            "Contenido" => $Contenido,
            "Genero" => $Genero,
            "Idioma" => $Idioma,
            "Precio" => $Precio,
            "Fecha" => $Fecha,
            "PublicidadEspecial" => $PublicidadEspecial,
            "ID" => $ID
        );
        return self::executeNonQuery($sqlstr, $sqlParams);
    }

    public static function delete($ID)
    {
        $sqlstr = "DELETE from `peliculasInventario` where ID = :ID;";
        $sqlParams = array(
            "ID" => $ID
        );
        return self::executeNonQuery($sqlstr, $sqlParams);
    }

    public static function LlenarCbProductos()
    {
        $sqlstr = "select * from productos order by ID Desc";
        return self::obtenerRegistros($sqlstr, array());
    }
}

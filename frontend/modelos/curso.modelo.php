<?php 

require_once "conexion.php";

class ModeloCurso{

	static public function mdlTraerCursos($tabla, $id){

		$stmt= Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE id_video= :$id");

		$stmt -> bindParam(":".$id, $id, PDO::PARAM_INT);

		$stmt -> execute();

		return $stmt->fetchAll();

		$stmt->close();

		$stmt = null;
	}

}
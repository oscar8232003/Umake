<?php 
/*=============================================
=            VALIDAR LA SESSION         =
=============================================*/
if(!isset($_SESSION["validarSesion"])){
echo '<script>window.location = "'.$url.'";</script>';

	exit();	
}

/*=============================================
=            Traer la ruta           =
=============================================*/

$ruta=Ruta::ctrRuta();
$servidor=Ruta::ctrRutaServidor();


?>
<?php

if(isset($rutas[1]) && isset($rutas[2]) && isset($rutas[3]) && isset($rutas[4]) && isset($rutas[5])){

	$item = "id";
	$valor = $rutas[1];
	$idUsuario = $rutas[2];
	$idProducto = $rutas[3];

	$confirmarCompra = ControladorUsuarios::ctrMostrarCompras($item, $valor);



	if($confirmarCompra[0]["id_usuario"] == $idUsuario && $confirmarCompra[0]["id_producto"] == $idProducto){


	$informacion= ControladorProductos::ctrMostrarInfoProducto($item, $idProducto);

	$cursos= ControladorCurso::ctrTraerCursos($idProducto);

	$tituloVideo=str_replace("-", " ", $rutas[6]);

/*=============================================
=            SECCION DE VIDEO       =
=============================================*/
			echo '<br><br>
			<div class="container">
				<div class="row padre-video">
					<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
						<div align="center" class="embed-responsive embed-responsive-16by9">
							<video id="my-video" class="video-js embed-responsive-item hijo-video" controls preload="auto" data-setup="{}">
					    		<source src="'.$ruta.$cursos[0]["ruta"].$rutas[4].'/'.$rutas[5].'.mp4" type="video/mp4">
					  		</video>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
						<h3><strong>'.$rutas[4].'.'.$tituloVideo.'</strong></h3>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
						<a href="'.$url.'curso/'.$rutas[1].'/'.$rutas[2].'/'.$rutas[3].'"><button class="btn btn-primary"><span class="glyphicon glyphicon-arrow-left"></span> Regresar al curso</button></a>
					</div>
				</div>

				<hr>

				<div class="row">
					<div class="col-sm-8 seccion-videos">
						<ul>';
/*=============================================
=            URLS DE VIDEOS DEL CURSO        =
=============================================*/
						foreach ($cursos as $key => $value) {

							echo '<li><h4>'.$value["seccion"].'</h4></li>
								<br>';

								$videos = json_decode($value["videos"],true);
									foreach ($videos as $key => $value) {

									$urlAmigable= str_replace(" ", "-", $value["nombre"]);
       								$urlAmigable= str_replace(".", "", $urlAmigable);
       								$urlAmigable= str_replace("!", "", $urlAmigable);
       								$urlAmigable= str_replace("¡", "", $urlAmigable);	
       								$urlfinal=ControladorCurso::normaliza($urlAmigable);	

									echo '<li><a href="'.$ruta.'curso-reproductor/'.$rutas[1].'/'.$rutas[2].'/'.$rutas[3].'/'.$value["ruta"].'/'.$urlfinal.'">'.$value["nombre"].'</a></li>
										<hr>';
										}
									echo '<br>';
									}
				echo'</ul>
					</div>


					<div class="col-xs-12 col-sm-4 col-md-4 abuelo-recursos">
					<h3 class="text-center">Recursos</h3>';
					
					/*=============================================
					=            SECCION DE RECURSOS       =
					=============================================*/
					$contador=0;
					foreach ($cursos as $key => $value) {
					$contador++;	
					$recursos = json_decode($value["recursos"],true);
							
				echo '<button data-toggle="collapse" data-target="#boton'.$value["id"].'" class="btn btn-info btn-collap">Seccion '.$contador.'</button>

					<div id="boton'.$value["id"].'" class="collapse padre-recursos">
					
					<ul>';

					if($recursos["nombre"]=="nada"){
					echo'<li>
					<p>No hay Recursos disponible</p>
					</li>
					<hr class="hr">';	

					}else{	
				echo'<li>
					<a href="'.$recursos["url"].'" target="_blank" class="recursos">'.$recursos["nombre"].'</a>
					</li>
					<hr class="hr">';
					}
					
				echo '</ul>
					
					</div>';

					}

				echo '</div>

				</div>
			</div>';





}else{

		echo '<div class="col-xs-12 text-center error404" >
				               
	    		<h1><small>¡Oops!</small></h1>
	    
	    		<h2>No tienes acceso a este producto</h2>

	  	</div>';

	}

}else{

	echo '<div class="col-xs-12 text-center error404>
			               
    		<h1><small>¡Oops!</small></h1>
    
    		<h2>No tienes acceso a este producto</h2>

  	</div>';

}
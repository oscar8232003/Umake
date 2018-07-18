<!--=====================================
VALIDAR SESIÓN
======================================-->

<?php

if(!isset($_SESSION["validarSesion"])){

	echo '<script>window.location = "'.$url.'";</script>';

	exit();

}

?>
<!--=====================================
Traer ruta
======================================-->
<?php 
$ruta=Ruta::ctrRuta();
$servidor=Ruta::ctrRutaServidor();
?>

<!--=====================================
TRAER CURSO
======================================-->

<?php

if(isset($rutas[1]) && isset($rutas[2]) && isset($rutas[3])){

	$item = "id";
	$valor = $rutas[1];
	$idUsuario = $rutas[2];
	$idProducto = $rutas[3];

	$confirmarCompra = ControladorUsuarios::ctrMostrarCompras($item, $valor);



	if($confirmarCompra[0]["id_usuario"] == $idUsuario && $confirmarCompra[0]["id_producto"] == $idProducto){


	$informacion= ControladorProductos::ctrMostrarInfoProducto($item, $idProducto);

	$cursos= ControladorCurso::ctrTraerCursos($idProducto);

	$detalles = json_decode($informacion["detalles"], true);
	
	/*=============================================
=           ENCABEZADO DEL CURSO         =
=============================================*/
		
		echo '<br><br>
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-3 col-md-3 abuelo-recursos">
						<figure>
							<img src="'.$servidor.$informacion["portada"].'" class="img-thumbnail" alt="">
						</figure>	
					</div>

					<div class="col-xs-12 col-sm-9 col-md-9">
						<h1 class="titulo-curso">'.$informacion["titulo"].'</h1>
						<p>'.$informacion["descripcion"].'</p>
					</div>
				</div>

<br>
					<div class="row">
					<div class="col-xs-12">

								<li>
									<i style="margin-right:10px" class="fa fa-play-circle"></i> '.$detalles["Clases"].'
								</li>
								<li>
									<i style="margin-right:10px" class="fa fa-clock-o"></i> '.$detalles["Tiempo"].'
								</li>
								<li>
									<i style="margin-right:10px" class="fa fa-check-circle"></i> '.$detalles["Nivel"].'
								</li>
								<li>
									<i style="margin-right:10px" class="fa fa-info-circle"></i> '.$detalles["Acceso"].'
								</li>
								<li>
									<i style="margin-right:10px" class="fa fa-desktop"></i> '.$detalles["Dispositivo"].'
								</li>
								<li>
									<i style="margin-right:10px" class="fa fa-trophy"></i> '.$detalles["Certificado"].'
								</li>

							</div>	
				</div>



				<hr>



				<div class="row">
					<div class="col-xs-12 col-sm-8 col-md-8">
						<h3 class="text-center">Seccion de videos</h3>
											
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">';
					/*=============================================
					=            SECCION DE URLS DE VIDEOS       =
					=============================================*/
					foreach ($cursos as $key => $value) {
						
					$videos = json_decode($value["videos"],true);	
					
  					echo '<div class="panel panel-default">
    						<div class="panel-heading" role="tab" id="heading'.$value["id"].'">
      							<h4 class="panel-title">
        							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse'.$value["id"].'" aria-expanded="false" aria-controls="collapseOne">
          							'.$value["seccion"].'
          							<span class="glyphicon glyphicon-chevron-down pull-right"></span>
        							</a>
      							</h4>
    						</div>
    						<div id="collapse'.$value["id"].'" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading'.$value["id"].'">
      								<div class="panel-body">
       								<ul>';

       								foreach ($videos as $key => $value) {
       								$urlAmigable= str_replace(" ", "-", $value["nombre"]);
       								$urlAmigable= str_replace(".", "", $urlAmigable);
       								$urlAmigable= str_replace("!", "", $urlAmigable);
       								$urlAmigable= str_replace("¡", "", $urlAmigable);	
       								$urlfinal=ControladorCurso::normaliza($urlAmigable);

       								echo '<li><div class="well well-sm enlaces-cursos"><a href="'.$ruta.'curso-reproductor/'.$rutas[1].'/'.$rutas[2].'/'.$rutas[3].'/'.$value["ruta"].'/'.$urlfinal.'">'.$value["nombre"].'<span class="glyphicon glyphicon-play pull-right"></span></a></div></li>';	
       								}

       						  echo '</ul>
      					 		</div>
    						</div>
 						</div>';
 					}	
			echo    '</div>
					</div>


					<div class="col-xs-12 col-sm-4 col-md-4 abuelo-recursos">
					<h3 class="text-center">Recursos</h3>';


					/*=============================================
					=            SECCION DE RECURSOS        =
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

		echo '<div class="container-fluid">
	<div class="col-xs-12 text-center error404">
			               
    		<h1><small>¡Oops!</small></h1>
    
    		<h2>No tienes acceso a este producto</h2>

  	</div>
  	</div>';

	}

}else{

	echo '<div class="container-fluid">
	<div class="col-xs-12 text-center error404">
			               
    		<h1><small>¡Oops!</small></h1>
    
    		<h2>No tienes acceso a este producto</h2>

  	</div>
  	</div>';

}




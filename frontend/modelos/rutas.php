<?php

class Ruta{

	/*=============================================
	RUTA LADO DEL CLIENTE
	=============================================*/	

	public function ctrRuta(){

		return "http://localhost:8081/frontend/";
	
	}

	/*=============================================
	RUTA LADO DEL SERVIDOR
	=============================================*/	

	public function ctrRutaServidor(){

		return "http://localhost:8081/backend/";
	
	}

}

// en js de carrito de compras en el boton pagar en la respuesta hay que poner esto respuesta.substr(-94);
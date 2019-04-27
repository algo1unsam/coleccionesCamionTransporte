import camion.*
import cosas.*

object deposito {
		const property cosas = []
		//const property veichulo = []
		method estaEnPeligro(){
			return (camion.excedidoDeCarga() or camioneta.estaEnPeligro())
		}// debe devolver true false si amboso si alguno supero su limite de carga el || es un "or"
		
		method cargar(unaCosa) {cosas.add(unaCosa)	}
		method descargar(unaCosa){cosas.remove(unaCosa)	}
		method enviarCosas(){
		
		
		
	}
		
}

import transportes.*
import cosas.*

object deposito {
		
		const property transportes = []
		
		method estaEnPeligro(){
			return (camion.excedidoDeCarga() or camioneta.estaEnPeligro())
		}// debe devolver true false si amboso si alguno supero su limite de carga el || es un "or"
		
		method entravehiculo(vehiculo) {transportes.add(vehiculo)	}
		method salevehiculo(vehiculo){transportes.remove(vehiculo)	}
		
		method enviarCosas(cosas,vehiculos){
			cosas.foreach{cosa => vehiculos.cargar(cosas)}
			transportes.remove(vehiculos)
	}
		
}

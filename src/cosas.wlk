import transportes.*
import deposito.*

object kr {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bb {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}

object paqueteDeLadrillos{
	
	var paqueteLadrillos
	var pesoRefuerzo = 10
	var pesoLadrillo = 2
	var cantRefuerzos 
	var property cantLadrillos = 0 
	
	method calculoPeso(){
			if (cantLadrillos < 1000){
			cantRefuerzos = (cantLadrillos/100).roundUp()
		}else{
			cantRefuerzos = (cantLadrillos/50).roundUp()
		}
		paqueteLadrillos = pesoLadrillo * cantLadrillos + pesoRefuerzo * cantRefuerzos	
	}	
	method peso(){	return  paqueteLadrillos }
	
	method nivelPeligroisdad(){ return (50 - cantRefuerzos).max(0)	}
}

object bAnti {
	var  estado = "nueva"
	var nivelPeligrosidad = 5
	var peso = 200
	
	method peso(){
		return peso
	}
	method nivelPeligrosidad(){
		return nivelPeligrosidad
	}
	method cargada(){
	peso = 300
	nivelPeligrosidad = 100
	estado = "cargada"
}
method descargada(){
	peso = 220 
	nivelPeligrosidad = 25
	estado = "descargada"
	}
}
object contenedorPuerto{
	var property peso = 100
	const property contenido = []
		method cargar(unaCosa) {contenido.add(unaCosa)	}
		method descargar(unaCosa){contenido.remove(unaCosa)	}
		method pesoTotal(){
			return peso + contenido.sum{cosa => cosa.peso()}//revisar la logica de esto
		}
		method nivelPeligrosidad(){
			return return contenido.max{unaCosa => unaCosa.nivelPeligrosidad()}
		}
}
object embalajeDeSeguridad{
	var peso = null
	var nivelPeligrosidad = null
	method embalar(cosa){
		peso = cosa.peso()
		nivelPeligrosidad = cosa.nivelPeligrosidad()
	}
	method peso(){
		return peso
	}
	method nivel(){
		return nivelPeligrosidad
	}
	
}
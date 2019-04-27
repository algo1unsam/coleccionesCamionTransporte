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
	var property estado = nueva
	
	method peso(){
		return estado.peso
	}
	method peligrosidad(){
		return estado.peligrosidad
	}
}

object nueva{
	var peso = 200
	var peligrosidad = 5
}
object cargada{
	var peso = 300
	var peligrosidad = 100
}
object descargada{
	var peso = 220 
	var peligrosidad = 25
}

object contenedorPuerto{
	var property peso = 100
	const property contenido = []
		method pesoTotal(){
		return peso + contenido.sum{cosa => cosa.peso()}//revisar la logica de esto
	}
}
object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
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
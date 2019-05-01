import cosas.*

object camion{
	const property cosas = []
	var property enRuta = false
	var property peso = 1000
	var property cargaMax = 2500
	
	method cargar(unaCosa) {cosas.add(unaCosa)	}
	method descargar(unaCosa){cosas.remove(unaCosa)	}
	method pesoTotal(){
		return peso + cosas.sum{cosa => cosa.peso()}
	}
	method excedidoDeCarga(){
		return (self.pesoTotal() > cargaMax)
	}
	method objetosPeligrosos(nivel){
		return cosas.filter({unaCosa => unaCosa.nivelPeligroisdad() > nivel})
	}/*retorna la lista de objetos que superan el nivel */
	method objetosMasPeligrososQue(cosa){
		return cosas.filter({unaCosa => unaCosa.nivelPeligroisdad() > cosa.nivelPeligroisdad()})
	}// devuelve una lista de objetos que superan al objeto con el que lo comparo
	method puedeCircularEnRuta(nivelmaximopeligrosidad){
		return cosas.all{ unacosa => unacosa.nivelPeligrosidad() <= nivelmaximopeligrosidad}
	}// retorna true or false
	method cosaMasPesada(){
		return cosas.max{unaCosa => unaCosa.peso()}
	}//retorna la cosa mas pesada no su peso
	method convieneCargar(cosa) = (self.cond1(cosa) and self.cond2(cosa))
		
		method cond1(cosa) = ((cosa.peso() + self.pesoTotal()) < cargaMax)
		
		method cond2(cosa) = cosas.any{cosa2 => cosa2.nivelPeligrosidad() > cosa2.nivelPeligrosidad() }	
			
}
object camioneta {
	const property cosas = []
	var property enRuta = false
	var peso = 900
	var limite = 5
	method peso(){
		return peso
	} 
	method cargar(unaCosa) {cosas.add(unaCosa)	}
	method descargar(unaCosa){cosas.remove(unaCosa)	}
	method queLleva(){
		return cosas
	}// no se si esto funciona
	method estaEnPeligro(){
		return cosas > limite
	}


}


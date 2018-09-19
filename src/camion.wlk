import cosas.*

object camion {
	const property cosas = []
	const peso=1000;
	const pesoMaximo=2500
	method cargar(unaCosa) {
		
		cosas.add(unaCosa)
	}
	method descargar(unaCosa){
		
		cosas.remove(unaCosa)
		
	}
	
	method pesoTotal(){
	
	
		return peso+cosas.sum({cosa=>cosa.peso()})
	}
	method excedidoDePeso(){
		
		return self.pesoTotal()>pesoMaximo
		
		
	}
	method objetosPeligrosos(nivel){
		
		return cosas.filter({_cosa=> _cosa.nivelPeligrosidad()>nivel})
		
		
	}
	method objetosMasPeligrososQue(cosa){
		
		
		return cosas.filter({cosa_=> cosa_.nivelPeligrosidad()>cosa.nivelPeligrosidad()})
		
		
		
		
	}
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		
		return cosas.all({_cosas=> _cosas.nivelPeligrosidad()<nivelMaximoPeligrosidad})
		
		
		
	}
	method tieneAlgoQuePesaEntre(min, max){
		
	return cosas.any({_cosas=>_cosas.peso()>=min  && _cosas.peso()<=max})
		
		
	}
	method cosaMasPesada(){
		
		return cosas.max({cosa=>cosa.peso()})
		
	}
	method totalBultos(){
		
		return cosas.sum({cosa=>cosa.bulto()})
		
	}
	method pesos(){
		return cosas.map({cosa=>cosa.peso()  })
	}
	
}

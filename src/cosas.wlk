object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
	method bulto(){ 
		return 1
	}
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
	method bulto(){
		return 2
	}
}


object paquetedeLadrillos{
	var ladrillos=0;
	const pesoLadrillo=2
	method setLadrillos(_ladrillos){
		ladrillos=_ladrillos
	}
	method peso(){
		return ladrillos*pesoLadrillo
		
	}
	method nivelPeligrosidad() {
		return 2
	}
	method bulto(){
		if (ladrillos<=100){
			return 1
		}else if (ladrillos>=101 && ladrillos <=300){
			return 2
		}
		else{
			return 3
		}
	}
				
}

object arenaGranel{
	
	var peso=0
	method setPeso(_peso){
		
		peso=_peso
	}
	method nivelPeligrosidad(){
		
		return 1
		
	}
	method bulto(){
		return 1
	}
}


object bateriaAntiAerea{
	var misiles=false
	
	method setMisiles(){
		misiles=true
	}
	method sacarMisiles(){
		misiles=false
	}
	method peso(){
		if(misiles){
			
			return 300
			
		}
		else
		{
			return 200
		}
	}
	method nivelPeligrosidad(){
		
		if (misiles){
			return 100
			
		}
		else{
			return 0
		}
		
		
	}
	
	method bulto() {
		
		if (misiles==0){
			return 1
		}
		else{
			return 2
		}
	}
	
	
	}
	
	
	object contenedorPortuario{
		const cosas=[]
		const peso=100
		method set(cosa){
			cosas.add(cosa)
		}
		method peso(){
			
			return peso + cosas.sum({ cosa=>cosa.peso() })
			
			
		}
		method nivelPeligrosidad(){
			if (not cosas.isEmpty()){
				
			return cosas.max({cosa=>cosa.nivelPeligrosidad()}).nivelPeligrosidad()
			}
			else{
				
				return 0
			}
			
		}
		method bulto(){
			
			return 1+cosas.sum({cosa=>cosa.bulto()})
			
		}
		
		
	}
	
	object residuosRadiactivos{
		var peso=0
		method setPeso(_peso){
			peso=_peso
		}
		method peso(){
			return peso
			
		}
		
	method bulto(){
		return 1
	}
		
	}
	
   object embalajeDeSeguridad{
   	var _cosa=null
   	method setCosa(cosa){
   		
   		_cosa=cosa
   		
   		
   	}
   	method peso(){
   		
   		return _cosa.peso()
   	}
   	method nivelPeligrosidad(){
   		return _cosa.nivelPeligrosidad()/2
   	}
   	
   	method bulto(){
   		return 2
   	}
   	
   }
   
	
	
	
	
	
	

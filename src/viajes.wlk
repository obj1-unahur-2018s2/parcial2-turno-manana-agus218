import socios.*

class Viaje {
	
	var property idiomas = #{}
//	var property diasActividad = 0
	
	method implicaEsfuerzo()
	method sirveParaBroncearse()
	method diasQueLleva()
	
	method esInteresante() { return self.idiomas().size()>1 }
	
	method esRecomendada(socio) { 
		return self.esInteresante() and socio.leAtrae()
		
	}
}

class Playa inherits Viaje {
	
	var property largo = 0
	
	override method implicaEsfuerzo() { return self.largo()>1200 }
	override method sirveParaBroncearse() { return true }
	override method diasQueLleva() { return largo/500 }
	
}

class Ciudad inherits Viaje {
	
	var property atracciones = 0
	
	override method implicaEsfuerzo() { return self.atracciones().between(5, 8) }
	override method sirveParaBroncearse() { return false }
	override method diasQueLleva() { return atracciones/2 }
	
	override method esInteresante() { 
		return super() or self.atracciones()==5
	}
}

class CiudadTropical inherits Ciudad {
	
	override method sirveParaBroncearse() { return true }
	override method diasQueLleva() { return super()+1 }
	
	
}

class Trekking inherits Viaje {
	
	var property kmSenderos = 0
	var property diasDeSol = 0
	
	override method implicaEsfuerzo() { return self.kmSenderos()>80 }
	override method sirveParaBroncearse() { 
		return (self.diasDeSol()>200) or 
		((self.diasDeSol().between(100, 200)) and self.kmSenderos()>120)
	}
	override method diasQueLleva() { return kmSenderos/50 }
	
	override method esInteresante() { 
		return super() and self.diasDeSol()>140
	}
	
	
}
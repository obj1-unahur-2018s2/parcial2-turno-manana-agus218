import gimnasia.*
import viajes.*

class Socio {
	
	var property maxActividades = 0
	var property  actividadesQueRealizo = []
	
	var property edad = 0
	var property idiomasSocio = #{}
	
	method esAdoradorDelSol() { 
		return self.actividadesQueRealizo().all({actividad => actividad.sirveParaBroncearse()})
	}
	
	method actividadesEsforzadas() { 
		return self.actividadesQueRealizo().filter({ actividad => actividad.implicaEsfuerzo()})
	}
	
	method realizaActividad(actividad) { if 
		( actividadesQueRealizo.size() == self.maxActividades()) {
			self.error("Ya no puede realizar mas actividades.")
		}
		actividadesQueRealizo.add(actividad)
	}
	
	
	
}

class SocioTranquilo inherits Socio {
	
	method leAtrae(actividad) { 
		return actividad.diasActividad()>= 4
	}
}

class SocioCoherente inherits Socio {
	
	method leAtrae(actividad) { 
		return actividad.sirveParaBroncearse() or actividad.implicaEsfuerzo()
	}
}

class SocioRelajado inherits Socio {
	
	method leAtrae(actividad) { 
		
		 return idiomasSocio.union(actividad.idiomas())
		  
		//return actividad.idiomas()>=self.idiomas()
       //hacer any y la condicion tenga un contains(closure) ????
//       self.idiomas().any({ actividad => actividad.contains(idioma) })
      
	}
	
	
}





class TallerLiterario {
	
	var property libros = []
	
	var property idioma = ""
	var property cantPaginas = 0
	var property autor = ""
	
	
	method implicaEsfuerzo() { return libros.any(cantPaginas>500) or 
		libros.all(autor)
	}
	method sirveParaBroncearse() { return false }
	method diasQueLleva() { return libros.size() + 1 } 
	
	method esRecomendada(socio) { 
		return socio.idioma()>1 
		}
	
	
	
}

class Libros {
	
	var property idioma = ""
	var property cantPaginas = 0
	var property autor = ""
	
}
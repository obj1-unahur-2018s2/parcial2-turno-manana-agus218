import socios.*

class ClasesGimnasia {
	var property idiomas = []
	var property diasActividad = 1
	
	method implicaEsfuerzo() { return true }
	method sirveParaBroncearse() { return false }
	method diasQueLleva() { return diasActividad }
	
	method esRecomendada(socio) { return socio.edad().between(20, 30) }
}

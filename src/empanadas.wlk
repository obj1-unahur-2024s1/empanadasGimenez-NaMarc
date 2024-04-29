/** First Wollok example */
object galvan {
	var sueldo = 150000
	var deuda = 0
	var dinero = 0
	
	method sueldo(monto){
		sueldo = monto
	}
	method sueldo() {
		return sueldo
	}
	method cobrarSueldo(){
		dinero += 0.max(sueldo - deuda)
		deuda = if (deuda > 0) 0.max(deuda - sueldo)else 0
	}
	method gastar(cuanto){
		deuda += if (cuanto - dinero > 0)(cuanto-dinero) else 0
		dinero = 0. max(dinero - cuanto)
	}
	method totalDeuda(){
		return deuda
	}
	method totalDinero(){
		return dinero
	}
}
object baigorria {
	var sueldo 
	var valorEmpanadas = 150
	var cobro = 0
	
	method sueldo(empanadasVendidas){
		sueldo = valorEmpanadas * empanadasVendidas
	}
	method sueldo() {
		return sueldo
	}
	method valorEmpanadas(valor){
		valorEmpanadas = valor
	}
	method valorEmpanadas(){
		return valorEmpanadas
	}
	method cobrarSueldo(){
		cobro += sueldo
	}
	method totalCobrado(){
		return cobro
	}
}
object gimenez{
	var fondoSueldos = 3000000
	
	method pagarA(empleado){
		fondoSueldos -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
	
}

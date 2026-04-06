//Escribir aqui los objetos
object galvan {
  var sueldo= 15000
  var dinero = 0
  var deuda = 0

   method cambiarSueldo(cantidad) {
      sueldo = cantidad
    }

    method sueldo() {
      return sueldo
    }

  
    method gastar(cuanto) {
    if (dinero >= cuanto) {
      dinero = dinero - cuanto
    } else {
      var resto = cuanto - dinero
      dinero = 0
      deuda = deuda + resto
    }
  }

  method cobrar() {
    if (sueldo >= deuda) {
      var sobra = sueldo - deuda
      deuda = 0
      dinero = dinero + sobra
    } else {
      deuda = deuda - sueldo
    }
  }
}

object baigorria {
    var sueldo = 0
    var sueldoAcumulado = 0

    method ventasEmpanadas(cantidad) {
      sueldo = cantidad * 15
    }

    method sueldo() {
      return sueldo
    }

    method totalCobrado() {
      return sueldoAcumulado
      sueldo = 0
    }
}

object gimenez {
  var fondoCaja = 300000

  method pagoDeSueldo(sueldoEmpleado) {
    fondoCaja = fondoCaja - sueldoEmpleado
  }

  method fondo() {
      return fondoCaja
  }
}


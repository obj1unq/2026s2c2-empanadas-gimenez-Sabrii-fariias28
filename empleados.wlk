object galvan {
  var sueldo = 15000
  var dinero = 0
  var deuda = 0

   method sueldo(_sueldo) { /*Setter*/
      sueldo = _sueldo
    }

    method sueldo() { /*Getter*/
      return sueldo
    }

    method deuda() {
      return deuda
    }

    method dinero() {
      return dinero
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
      dinero = dinero + sobra
      deuda = 0
    } else {
      deuda = deuda - sueldo
    }
  }
}

object baigorria {
    var sueldo = 0
    var sueldoAcumulado = 0

    method vender(cantidad) {
      sueldo = sueldo + cantidad * 15
    }

    method sueldo() {
      return sueldo
    }

    method totalCobrado() {
      return sueldoAcumulado
    }

    method cobrar() {
      sueldoAcumulado = sueldoAcumulado + sueldo
      sueldo = 0
    }
}

object gimenez {
  var fondoCaja = 300000

  method pagarSueldo(empleado) {
    fondoCaja = fondoCaja - empleado.sueldo()
    empleado.cobrar()
  }

  method fondo() {
      return fondoCaja
  }
}




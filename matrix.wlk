object puenteBrooklyn {
    method dejaPasar(mensajero) = mensajero.peso() < 1000
}

object matrix {
    method dejaPasar(mensajero) = mensajero.puedeLlamar()
}

object paquete {
    var estaPago = false
    
    method puedeEntregarse(mensajero, destino) = destino.dejaPasar(mensajero) && estaPago
    method pagar() {
        estaPago = true
    } 
}

object roberto {
    var pesoPropio = 100
    var vehiculo = bicicleta

    method puedeLlamar() = false
    method peso() = pesoPropio + vehiculo.peso()

    method vehiculo(unVehiculo) {
        vehiculo = unVehiculo
    }
}

object bicicleta {
    method peso() = 1
}
object camion {
    var cantidadAcoplados = 1

    method peso() = cantidadAcoplados * 500
    method cantidadAcoplados(cantidad) {
        cantidadAcoplados = cantidad
    }
}

object neo {
    var tieneCredito = true

    method peso() = 0
    method puedeLlamar() = tieneCredito
    // setter tieneCredito/1
}

object chuckNorris {
    method peso() = 900
    method puedeLlamar() = true
}
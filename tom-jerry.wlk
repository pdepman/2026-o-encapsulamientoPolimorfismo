object tom {
  // var property energia = 0
  // property -> nos genera setter y getter
  // queremos AMBAS cosas? no? no queremos property
  var energia = 0

  method velocidad() = 5 + (energia / 10)
  // es equivalente, se prefiere la de consulta
  // para entender la diferencia entre metodo de efecto/consulta
  /* method velocidad() = {
    return 5 + (energia / 10)
  } */
  method energia(unaEnergia) {
    energia = unaEnergia
  }

  method puedeAtrapar(criatura) = criatura.velocidad() < self.velocidad()
}

object jerry {
  var peso = 5

  method velocidad() = 10 - peso
  method peso(unPeso) {
    peso = unPeso
  }
}

object ratonRobot {
  method velocidad() = 8
}

/* 
ratonRobot y jerry IMPLEMENTAN la INTERFAZ criatura
la interfaz criatura define que se tiene que implementar el metodo velocidad/0

Por mas que implemente el metodo NO es polimorfico
Una cpu NO es una criatura

object cpu {
  method velocidad() = 5 // GHz
} 
*/
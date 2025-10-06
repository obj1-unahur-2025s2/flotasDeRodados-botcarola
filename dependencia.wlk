import rodados.*

class Dependencia {
  const cantidadEmpleados
  const flotaDeRodados = []

  method cantidadEmpleados() = cantidadEmpleados
  method flotaDeRodados() = flotaDeRodados

  method agregarAFlota(rodado) {
    flotaDeRodados.add(rodado)
  }

  method quitarDeFlota(rodado) {
    flotaDeRodados.remove(rodado)
  }

  method pesoTotalFlota() {
    return flotaDeRodados.sum({rodado => rodado.peso()})
  }

  method estaBienEquipada() {
    return flotaDeRodados.size() >= 3 && flotaDeRodados.all({rodado => rodado.velocidadMaxima() >= 120})
  }

  method capacidadTotalEnColor(color) {
    return flotaDeRodados.filter({rodado => rodado.color() == color}).sum({rodado => rodado.capacidad()})
  }

  method colorDelRodadoMasRapido() {
    return flotaDeRodados.max({rodado => rodado.velocidadMaxima()}).color()
  }

  method capacidadFaltante() {    
    return cantidadEmpleados - flotaDeRodados.sum({rodado => rodado.capacidad()})
  }

  method esGrande() {
    return cantidadEmpleados >= 40 && flotaDeRodados.size() >= 5
  }
}
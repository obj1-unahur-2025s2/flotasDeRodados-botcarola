object pepita {
  var energy = 100

  method energy() = energy

  method fly(minutes) {
    energy = energy - minutes * 3
  }
}

// EJEMPLO DE CLASE EN WOLLOK

class Globo {
  // SE DECLARAN LOS ATRIBUTOS DE LA CLASE
  var diametro 
  const color 

  // SE DEFINEN LOS MÉTODOS PARA CARGAR ESOS ATRIBUTOS

  method inflar() {
    diametro += 10
  }

  method color() = color
  method diametro() = diametro
  method explotar() {
    diametro = 0
  }

}

// como instancio una clase?
const globoRojo = new Globo(color="Verde", diametro=0)

// LE PUEDO DAR VALORES POR DEFECTO A LOS ATRIBUTOS

class Globo2 {
  var diametro = 0
  const color = "Rojo"

  method inflar() {
    diametro += 10
  }

  method color() = color
  method diametro() = diametro
  method explotar() {
    diametro = 0
  }
}

// al instanciar no hace falta pasarle nada
const globoRojo2 = new Globo2()

// al instanciar puedo pasarle solo algunos atributos y reasignar otro valor a cualquiera de los atributos

const globoAzul = new Globo2(color="Azul")
const globoGrande = new Globo2(diametro=50)

object globos {
  var misGlobos = []

  method agregarGlobo(color, diametro) {
    misGlobos.add(new Globo2(color=color, diametro=diametro))
  }
}
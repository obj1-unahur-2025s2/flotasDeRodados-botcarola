import interiorTrafic.*
import motorTrafic.*

class ChevroletCorsa {    
    const color   

    method capacidad() = 4
    method velocidadMaxima() = 150
    method color() = color
    method peso() = 1300    
}

class RenaultKwid {
    const tanqueAdicional

    method capacidad() = if (tanqueAdicional) 3 else 4
    method velocidadMaxima() = if (tanqueAdicional) 120 else 110
    method color() = "azul"
    method peso() = 1200 + if (tanqueAdicional) 150 else 0
}

object trafic {
    var interior = interiorComodo
    var motor = motorPulenta

    method cambiarInterior(nuevoInterior) { 
        interior = nuevoInterior
    }

    method cambiarMotor(nuevoMotor) { 
        motor = nuevoMotor
    }

    method capacidad() = interior.capacidad()
    method velocidadMaxima() = motor.velocidadMaxima()
    method color() = "blanco"
    method peso() = 4000 + interior.peso() + motor.peso()
}

class AutoEspecial {
    const property capacidad
    const property velocidadMaxima
    const peso
    const color

    method color() = color
    method peso() = peso
}


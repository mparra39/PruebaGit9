//: Velocímetro

import UIKit

//Enum de Velocidades
enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}


//Clase Auto
class Auto {
    
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        var velocidadEnCadena : String
        var actual : Int
        
        switch velocidad{
            
        case .Apagado:
            actual = velocidad.rawValue
            velocidadEnCadena = "Apagado"
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            actual = velocidad.rawValue
            velocidadEnCadena = "Velocidad Baja"
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            actual = velocidad.rawValue
            velocidadEnCadena = "Velocidad Media"
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            actual = velocidad.rawValue
            velocidadEnCadena = "Velocidad Alta"
            velocidad = .VelocidadMedia
        }
        
        return (actual, velocidadEnCadena)
    }
}



// Pruebas de la clase

//Instancia de la clase Auto
var auto = Auto()


//Itera 20 veces
for i in 1...20 {
    print(auto.cambioDeVelocidad())
}

print("")

//Salida con 5 iteraciones
var auto1 = Auto()

for i in 1...5{
    print("\(i). \(auto1.velocidad.rawValue), \(auto1.velocidad) ")
    auto1.cambioDeVelocidad()
}




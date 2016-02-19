//Juego de memoria

import UIKit


for rango in 0...100{
    //print(rango)
    
    if(rango % 5 == 0){                     //Si rango es divisible entre 5
        print("# \(rango) Bingo!!!")
    }
    
    if(rango % 2 == 0){                     //Determinar si rango es par o impar
        print("# \(rango) par!!!")
    }else{
        print("# \(rango) impar!!!")
    }
    
    if(rango >= 30) && (rango <= 40){       //Si rango se encuentra entre 30 y 40
        print("# \(rango) Viva Swift!!!")
    }
    
    
}


//Hola

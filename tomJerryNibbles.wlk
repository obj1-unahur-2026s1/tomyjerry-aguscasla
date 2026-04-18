object tom {
    var energia = 50

    method correr(distancia) {
        energia -= distancia / 2
    }
    
    method comerRaton(unRaton) {
        energia += 12 + unRaton.peso()
    }

    method cazarRaton(unRaton, distancia) {
        if (self.puedeCazarUnRaton(distancia)){
            self.correr(distancia) 
            self.comerRaton(unRaton)
        }
    }

    method puedeCazarUnRaton(distancia) = energia > (distancia / 2)
    method velocidadMaxima() = 5 + (energia / 10 )
}

object jerry {
    var edad = 2

    method cumplirAgnos() {
        edad += 1
    }

    method peso() = edad * 20 
}

object nibbles {
    method peso() = 35 
}

object cepita {
    method peso() = 12
}
import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = null
	var property imagen = "pepita1.png"
	var property posicion = game.at(3,3)
	
	method teEncontro(alguien){
		alguien.darComida(self)
	}

	method come(comida) {
		energia = energia + comida.energia()
		if(energia >100){
			imagen = "pepita2.png"	
		}
		else if(energia.between(10,100)){
			imagen = "pepita1.png"
		}
		else{imagen = "pepita.png"}
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad && energia > 20) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
		else if(energia < 20){
			game.say(self, "dame de comer primero")
						
		}
		else{
			game.say(self, "ya estoy aca")
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
			if(energia < 10){
				imagen = "pepita.png"
			}else if(energia.between(10,100)){
				imagen ="pepita1.png"
					}
			self.posicion(nuevaPosicion)
	}	
}

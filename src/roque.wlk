import comidas.*

object roque {
	
	var property posicion = game.at(7,6)
	var property comidaGuardada = null
	var property nuevaComida = null
	
	method imagen() = "jugador.png"
	
	method agarrarComida(comida){
		
		if (comidaGuardada == null){
			comidaGuardada = comida
			game.removeVisual(comida)
		}
		else{
			self.soltarComida(comida)
		}
	}
	
	method soltarComida(comida){
		 
		game.addVisualIn(comidaGuardada, self.posicion().clone().up(1))
		game.removeVisual(comida)
		comidaGuardada = comida
	}
		
	method darComida(ave){
		if( self.comidaGuardada() != null){
			ave.come(self.comidaGuardada())
			self.regenerarComida(comidaGuardada)		
			comidaGuardada = null
		}	
	}	
	
	method regenerarComida(comida){
		if(comida.energia() == alpiste.energia() ){
			game.addVisualIn(comida, game.at(1.randomUpTo(10), 1.randomUpTo(10)))
		}
		else{
			game.addVisualIn(comida, game.at(1.randomUpTo(10), 1.randomUpTo(10)))
		} 
	}
}


class Ciudad {
	const property imagen = "ciudad.png"
	const property nombre = null
	const property posicion = null
	
	method llego(alguien) {
		if (alguien.ciudad() != self) {
			alguien.ciudad(self)
			alguien.say("Llegué a " + nombre)
		}
	}
}

object ciudades {
	const property villaGesell = new Ciudad(
		nombre = "Villa Gesell",
		posicion = game.at(8,3)
	)

	const property buenosAires = new Ciudad(
		nombre = "Buenos Aires",
		posicion = game.at(1,1)
	)
}
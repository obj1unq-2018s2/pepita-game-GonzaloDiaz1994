object villaGesell {
	method imagen() = "ciudad.png"
	method nombre() = "Villa Gesell"
	method posicion() = game.at(8,3)
	method darComida(comida){}
	method teEncontro(alguien){}
}

object buenosAires {
	method imagen() = "ciudad.png"
	method nombre() = "Buenos Aires"
	method posicion() = game.at(1,1)
	
	// TODO Este no parece un método que corresponda a las responsabilidades de buenosAires, algo anda mal.
	method darComida(comida){}
	method teEncontro(alguien){}
}

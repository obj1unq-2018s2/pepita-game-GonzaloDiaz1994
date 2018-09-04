object manzana {
var property posicion = game.at(5,1)
	const property imagen = "manzana.png"
	method energia() = 80
	method teEncontro(alguien){
		alguien.agarrarComida(self)
	}
}

object alpiste {
	var property posicion = game.at(5,5)
	const property imagen = "alpiste.png"
	method energia() = 5
	method teEncontro(alguien){
		alguien.agarrarComida(self)
	}
}


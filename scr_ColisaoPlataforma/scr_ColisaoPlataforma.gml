function scr_ColisaoPlataforma(objetoColisor){
	// Colisão horizontal
	repeat(abs(velh)) { // Vai se repetir até 5 vezes, Usamos o abs pra garantir que o valor seja positivo
		if (!place_meeting(x + sign(velh), y, objetoColisor)) { // Se não estiver colidindo com a plataforma
			x += sign(velh); // Eu me movo
		} else { // Se não
			velh = 0; // Eu não me movo
			break;
		}
	}
	// Colisão vertical
	repeat(abs(velv)) {
		if (!place_meeting(x, y + sign(velv), objetoColisor)) {
			y += sign(velv);
		} else {
			velv = 0;
			break;
		}
	}
}
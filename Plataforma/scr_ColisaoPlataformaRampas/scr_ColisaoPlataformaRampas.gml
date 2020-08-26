function scr_ColisaoPlataforma(objetoColisor){
	// Colisão horizontal
	repeat(abs(velh)) { // Vai se repetir até 5 vezes, Usamos o abs pra garantir que o valor seja positivo
		// Colisão com rampas
		if (place_meeting(x + sign(velh), y, objetoColisor) && !place_meeting(x + sign(velh), y - 1, objetoColisor)) { // Subindo Rampas
			// Precisamos verificar se estamos colidindo com o bloco e um sobre mim não existe bloco
			y--; // Me joga um pra cima
		}
		
		if (!place_meeting(x + sign(velh), y, objetoColisor) // O espaço que estou está livre?
		&& !place_meeting(x + sign(velh), y + 1, objetoColisor) // O espaço que estou -1 vai continuar livre
		&& place_meeting(x + sign(velh), y + 2, objetoColisor)) { // E quando eu descer 2
			y++; // Me joga um pra baixo
		}
		
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
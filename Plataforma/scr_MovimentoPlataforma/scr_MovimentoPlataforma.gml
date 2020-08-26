function scr_MovimentoPlataforma(){
	var jump, jump_r, left, right, _velh, chao; 
	right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	jump = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_space);
	jump_r = keyboard_check_released(ord("Z")) || keyboard_check_released(vk_space);
	chao = place_meeting(x, y + 1, obj_bloco_plataforma);
	
	_velh = (right - left) * velocidade;
	velh = lerp(velh, _velh, .1);
	
	// Gravidade
	if (!chao) { // Enquanto não colidir com o bloco
		velv += gravidade;
		if (jump_r && velv < 0) { // Constrolando a altura do pulo
			// Soltei o botão do pulo e eu estiver caindo
			velv *= .5; // Vai diminuindo aos poucos
		}
	} else { // Se eu estiver no chão
		if (jump) { // Se eu pular
			velv = -pulo; // Pulo 
		}
	}
}
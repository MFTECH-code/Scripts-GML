function scr_MovimentoTopDown(deslize, acelerar){
	var up, left, down, right, _velh, _velv;
	up = keyboard_check(ord("W")) || keyboard_check(vk_up);
	left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	down = keyboard_check(ord("S")) || keyboard_check(vk_down);
	right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	
	if (deslize) {
		_velh = (right - left) * velocidade;
		_velv = (down - up) * velocidade;
		velh = lerp(velh, _velh, acelerar);
		velv = lerp(velv, _velv, acelerar);
	} else {
		velh = (right - left) * velocidade;
		velv = (down - up) * velocidade;
	}
	
}
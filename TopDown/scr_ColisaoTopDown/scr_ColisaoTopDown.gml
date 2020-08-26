function scr_ColisaoTopDown(objColisor){
	if (place_meeting(x + velh, y, objColisor)) {
		while(!place_meeting(x + sign(velh), y, objColisor)) {
			x += sign(velh);
		}
		velh = 0;
	}
	
	if (place_meeting(x, y + velv, objColisor)) {
		while(!place_meeting(x, y + sign(velv), objColisor)) {
			y += sign(velv);
		}
		velv = 0;
	}
}
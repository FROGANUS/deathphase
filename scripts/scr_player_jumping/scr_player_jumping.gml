function scr_player_jumping() {
	scr_inputs();


	//react to inputs

	//h movement
	move = key_left + key_right;
	hsp += (move / 6);


	if move = 0
	    {
	    if abs(hsp) > 0.1
	        {    
	        hsp -= (sign(hsp) / 20);
	        }
	    if abs(hsp) <= 0.1
	        {
	        hsp = 0;
	        }
	    }


	if abs(hsp) > movespeed
	    hsp = (sign(hsp) * movespeed);


	if (vsp < 8) vsp += grav;

	//jumping "let-off"
	if (vsp < 0) && (!key_jump_held) vsp = max (vsp,-jumpspeed/2);   //..or try dropping the /2

	scr_collisions();

	x += abs(hsp);
	y += abs(vsp);

	// sprite select
	image_index = 0;

	if vsp > 0
	{
	image_speed = 0;
	image_index = 3;
	}

	//face left-right

	if hsp != 0
	{
	image_xscale = sign(hsp);
	}




}

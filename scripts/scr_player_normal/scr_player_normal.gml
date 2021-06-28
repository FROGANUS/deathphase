function scr_player_normal() {
	scr_inputs();


	//h movement
	move = key_left + key_right;   

	hsp += (move * movespeed);    

   
	if move = 0 && hsp > 0
	     {    
	     hsp -= (sign(hsp));
	     }
    
	if abs(hsp) > movespeed
	    hsp = (sign(hsp) * movespeed); 

	if (vsp < 4) vsp += grav; 




	//jump movement 
	if (place_meeting(x, y+1, obj_wall)) 
	{
	    vsp = key_jump * -jumpspeed 
	}


	scr_collisions(); 

	x += abs(hsp); 
	y += abs(vsp); 

	// sprite select 
	image_index = 0; 



	//face left-right 

	if hsp != 0 
	{
	image_xscale = sign(hsp); 
	}



}

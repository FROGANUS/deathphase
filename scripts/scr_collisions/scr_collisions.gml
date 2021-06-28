function scr_collisions() {

	//vertical collision check

	if (place_meeting(x, y+vsp, obj_wall))
	{
	    while (!place_meeting(x, y+sign(vsp), obj_wall))
	    {
	        y += sign(vsp);
	    }
	    vsp = 0;
	}


	//horizontal collision check

	if (place_meeting(x+hsp, y, obj_wall))
	{
	    while(!place_meeting(x+sign(hsp), y, obj_wall))
	    {
	        x += sign(hsp);
	    }
	    hsp = 0;
	}

	//stop at room edge
	x = min(x, room_width - 4);
	x = max(x, 4);
	y = min(y, room_height - 4);
	y = max(y, 4);

	//fall death check
	    if y > (room_height - 6)
	    {
	        //instance_create(x,y+5,obj_playerKill);   (ADD RESOURCE)
	        instance_destroy();
	        //audio_play_sound(snd_playerDies, 9, false);     (ADD RESOURCE)
	    }





}

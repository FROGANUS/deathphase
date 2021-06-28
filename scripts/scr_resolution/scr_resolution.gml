/// @description RESOLUTION SWITCH
function scr_resolution() {


	var width;
	var height;

	switch (image_index)   //IMAGE_INDEX??
	{
	    case 0:
	    width = 400;
	    height = 300;
	    break;
    
	    case 1:
	    width = 426;
	    height = 240;
	    break;
    
	    case 2:
	    width = 800;
	    height = 640;
	    break;
    
	    case 3:
	    width = 1024;
	    height = 768;
	    break;
    
	    case 4:
	    width = 1280;
	    height = 720;
	    break;
	}

	ini_open("game_settings.ini");
	ini_write_real("settings", "width", width);
	ini_write_real("settings", "height", height);
	ini_close();

	global.width = width;
	global.height = height;

	//scr_resolution(); um... thought that was this??? 








}

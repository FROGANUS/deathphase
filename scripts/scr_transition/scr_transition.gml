/// @desc Slide Transition (mode, targetroom)
///@arg Mode sets transition mode between next, restart and goto.
///@arg Target sets target room for goto mode.

function scr_transition(){
	with (obj_transition) {
		mode = argument[0];
		if (argument_count > 1) target_r = argument[1];
		if (argument_count > 2) target_x = argument[2];
		if (argument_count > 3) target_y = argument[3];
	}
}
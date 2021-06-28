function scr_inputs() {
	// get player input

	key_up = min(-gamepad_button_check (0, gp_padu), -keyboard_check(vk_up), 0);
	key_down = max(gamepad_button_check (0, gp_padd), keyboard_check(vk_down), 0);
	key_left = min(-gamepad_button_check (0, gp_padl), -keyboard_check(vk_left), 0);
	key_right = max(gamepad_button_check (0, gp_padr), keyboard_check(vk_right), 0);
		
	key_jump = max(gamepad_button_check_pressed (0, gp_face1), 
		keyboard_check_pressed(vk_space), keyboard_check_pressed(ord("Z")), 0);
	key_jump_held = max(gamepad_button_check (0, gp_face1), 
		keyboard_check(vk_space), keyboard_check(ord("Z")), 0);

	key_flip = keyboard_check(ord("F"));
	key_eat = keyboard_check_pressed(ord("E"));
	
	key_start = max(gamepad_button_check_pressed (0, gp_start), keyboard_check_pressed(vk_escape), keyboard_check_pressed(vk_enter), 0);
	key_quit = max(gamepad_button_check_pressed (0, gp_select), keyboard_check_pressed(ord("Q")), 0);
	key_restart = max(gamepad_button_check_pressed (0, gp_shoulderr), keyboard_check_pressed(ord("R")), 0);
}


/// @description player movement

// Check key for movements
moveright = keyboard_check(vk_right);
moveleft = keyboard_check(vk_left);
moveup = keyboard_check(vk_up);
movedown = keyboard_check(vk_down);

// calculate movement
vx = ((moveright - moveleft) * walkspeed);
vy= ((movedown - moveup) * walkspeed);

// if idle
if (vx == 0 && vy = 0) {
	// Change idle sprite based on dir
	switch dir {
		case 0: sprite_index = spr_player_idle_right; break;
		case 1: sprite_index = Spr_Player_idle_up; break;
		case 2: sprite_index = Spr_player_idle_left; break;
		case 3: sprite_index = spr_player_idle_down; break;
		}
	}

	// if moving
	if (vx != 0 || vy !=0) {
		x += vx;
		y += vy;
	
		//change walking sprite based on direction
		if(vx > 0){
			sprite_index = spr_player_walk_right;
		dir = 0
	
		}
		if (vx < 0) {
			sprite_index = Spr_player_walk_left;
			dir = 2;
		}
		if (vy > 0) {
			sprite_index = spr_player_walk_down;
			dir = 3;
		}
		if (vy < 0) {
			sprite_index = spr_player_walk_up;
			dir = 1;
		}
	}
/// @description Insert description here
// You can write your code in this editor

//Controlando o player
var _floor = place_meeting(x, y + 1, obj_floor);

var _left, _right, _jump;
_left = keyboard_check(inputs.left);
_right = keyboard_check(inputs.right);
_jump = keyboard_check_pressed(inputs.jump);

velh = (_right - _left) * vel;



//Pulando
if(_floor) {
	if (_jump) {
		velv = -vel_jump;
	}
	
		//Se está andando
	if (velh != 0) {
		sprite_index = spr_player_run;
		//Girar personagem
		image_xscale = sign(velh)
	}
	else {
		sprite_index = spr_player_idle;
	}
}
else { //Pulando
	if (velv < 0) {
		sprite_index = spr_player_jump
	}
	else {
		sprite_index = spr_player_fall
	}
	
	//Aplicando a gravidade
	velv += grav;
	if (velh != 0) {
		image_xscale = sign(velh);
	}
}
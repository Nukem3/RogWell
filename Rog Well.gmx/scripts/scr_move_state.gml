///scr_move_state
scr_get_input();

stats = obj_player_stats;

// MANA = 100 by default
if (dash_key && stats.mana >= 10) {
        state = scr_dash_state;
        audio_play_sound(snd_dash, 1, false);
        alarm[0] = room_speed/6;
        stats.mana -= 10;
    }

if (superAttack_key && stats.mana >= 30) {
    state = scr_super_attack_state;
    alarm[1] = 10;
    stats.mana -= 30;
}
    
if (attack_key) {
    image_index = 0;
    audio_play_sound(snd_swing_sword, 1, false);
    state = scr_attack_state;
}

// Get direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get the length
if (xaxis == 0 and yaxis = 0) {
len = 0;
} else {
len = spd;
scr_get_face();
}

// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control the sprite
image_speed = .2;
if (len == 0) image_index = 0;

switch (face) {
case RIGHT:
sprite_index = spr_player_right;
break;

case UP:
sprite_index = spr_player_up;
break;

case LEFT:
sprite_index = spr_player_left;
break;

case DOWN:
sprite_index = spr_player_down;
break;
}

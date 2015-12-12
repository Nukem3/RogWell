///scr_super_attack_state
image_speed = .5;

switch (sprite_index) {
    case spr_player_down:
        sprite_index = spr_super_attack;
        break;

    case spr_player_up:
        sprite_index = spr_super_attack;
        break;

    case spr_player_right:
        sprite_index = spr_super_attack;
        break;

    case spr_player_left:
        sprite_index = spr_super_attack;
        break;
}

if (image_index >= 3 && attacked == false) {
    var xx = 0;
    var yy = 0;
    
    switch (sprite_index) {
        case spr_super_attack:
            xx = x;
            yy = y;
            break;
    }
    
    var sdmg = instance_create(xx, yy, obj_super_attack_damage);
    sdmg.creator = id;
    attacked = true;
}
///scr_get_input()
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
dash_key = mouse_check_button_pressed(mb_right);
attack_key = mouse_check_button_pressed(mb_left);
superAttack_key = keyboard_check_pressed(ord('1'));

// Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);
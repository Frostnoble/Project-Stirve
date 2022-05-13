/// @description Insert description here
// You can write your code in this editor
if(global.gamemode == 99)
{
	if(keyboard_check_pressed(vk_enter)) {
		fun = string_copy(text, 1, 3);
		num = real(string_copy(text, 5, 7));
		if(fun == "add")
		{
			show_debug_message(num);
			addInventory(num,1,NewItem(num),objInventory.inventory);
			global.gamemode = 0;
		}
	}
	
	draw_text(0, 0, text);
}

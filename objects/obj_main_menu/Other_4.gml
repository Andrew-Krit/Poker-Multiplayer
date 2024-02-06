/// @description Insert description here
// You can write your code in this editor










audio_play_sound(mp3_op,0,1,1,4,0.8);

enum menu_page
{
	main,
	host,
	join
}

ds_main_menu =
[
	["HOST", function(){scr_host_game(menu_page.host)}],
	["JOIN", function(){scr_join_game(menu_page.join)}]
];

ds_host_menu = 
[
	["HOST", function(){scr_host_game(menu_page.host)}],
];

menus = [ds_main_menu, ds_host_menu]; 




current_menu_page = menus[menu_page.main];
selected_option_index = 0;




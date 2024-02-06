audio_play_sound(mp3_op,0,1,0.1,4,0.8);

main_menu =
[
	["HOST", function()
	{
		data = ds_map_create();
		ds_map_add(data, "hostNumber", undefined);
		ds_map_add(data, "playerNumber", undefined);
		ds_map_add(data, "username", "sicknezz");
		sendMapOverUDP("127.0.0.1", 8080, 100, data, msgType.CREATE_HOST);
		
		current_page = host_menu;
	}],
	["JOIN", function()
	{
		
	}]
];

host_menu =
[
	["HOST", function()
	{
		
	}],
	["BACK", function()
	{
		data = ds_map_create();
		ds_map_add(data, "hostNumber", global.hostNumber);
		sendMapOverUDP("127.0.0.1", 8080, 100, data, msgType.STOP_HOST);
		
		current_page = main_menu;
	}]
];

current_page = main_menu;
selected_option_index = 0;




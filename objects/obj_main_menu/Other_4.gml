//audio_play_sound(mp3_op,0,1,0.1,4,0.8);

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
		current_page = join_menu;
	}]
];

host_menu =
[
	["HOST", function()
	{
		
	}],
	["BACK", function()
	{
		should_host_stop = true;
	}]
];

join_menu =
[

];

is_host_stopped = false;
should_host_stop = false;

did_we_received_hosts = false;
should_i_try_to_get_hosts = true;

current_page = main_menu;
selected_option_index = 0;




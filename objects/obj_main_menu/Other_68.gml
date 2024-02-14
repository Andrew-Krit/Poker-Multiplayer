if(async_load[? "size"] > 0)
{
	var _c_rec_buff = async_load[? "buffer"];
	buffer_seek(_c_rec_buff, buffer_seek_start, 0);
	var _message_id = buffer_read(_c_rec_buff, buffer_string);
	
	var _response = json_decode(_message_id);
	
	if(ds_map_find_value(_response, "type") == msgType.CREATE_HOST)
	{
		var _hostNumber = ds_map_find_value(_response, "hostNumber");
		var _playerNumber = ds_map_find_value(_response, "playerNumber");
		
		global.hostNumber = _hostNumber;
		global.playerNumber = _playerNumber
	}
	
	if(ds_map_find_value(_response, "type") == msgType.STOP_HOST)
	{
		var _res = ds_map_find_value(_response, "res");
		
		if(_res == "stopped")
		{
			is_host_stopped = true;
			current_page = main_menu;
		}
	}
	
	
	if(ds_map_find_value(_response, "type") == msgType.GET_HOSTS)
	{
		var _hosts = ds_map_find_value(_response, "hosts");
		number_of_hosts = ds_list_size(_hosts);
		for(var i = 0; i < number_of_hosts; i++)
		{
			var _host = ds_list_find_value(_hosts, i);
			number_of_players = ds_list_size(_host);
			array_push(join_menu,	["host #"+ string(i), function(){}]);
			did_we_received_hosts = true;
		}
		array_push(join_menu, 	["BACK", function()
		{
			current_page = main_menu;
		}]);
	}
}
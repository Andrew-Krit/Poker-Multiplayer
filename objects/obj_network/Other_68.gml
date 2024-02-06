if(async_load[? "size"] > 0)
{
	var _c_rec_buff = async_load[? "buffer"];
	buffer_seek(_c_rec_buff, buffer_seek_start, 0);
	var _message_id = buffer_read(_c_rec_buff, buffer_string);
	
	var _response = json_decode(_message_id);
	
	if(ds_map_find_value(_response, "type") == msgType.GET_NEW_PLAYERS)
	{
		var _players = ds_map_find_value(_response, "players");
		
		number_of_players = instance_number(obj_testplayer);
		
		if(number_of_players > 0)
		{
			for(var i = 0; i < number_of_players; i++)
			{
				var _ext_player = instance_find(obj_testplayer, i);
				var _number_of_players = ds_list_size(_players);
				
				for(var j = 0; j < _number_of_players; j++)
				{
					var _player = ds_list_find_value(_players, j);
					var _pn = ds_list_find_value(_player, "playerNumber");
					
					if(_pn == _ext_player.playerNumber)
					{
						ds_list_delete(_players, j);
						_number_of_players = ds_list_size(_players);	
					}
				}
			}
		}
		
		var _number_of_players_remain = ds_list_size(_players);
		
		for(var i = 0; i < _number_of_players_remain; i++)
		{
			var _player = ds_list_find_value(_players, i);
			newPlayer = instance_create_layer(room_width/2, room_height/2, "Instances_1", obj_testplayer);
			//newPlayer.i
		}
	}
}
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
		global.playerNumber = _playerNumber;
		
		instance_create_layer(180, 464, "Instances", obj_playerDeck);
	}
}
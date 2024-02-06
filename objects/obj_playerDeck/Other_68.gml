//if(async_load[? "size"] > 0)
//{
//	var _c_rec_buff = async_load[? "buffer"];
//	buffer_seek(_c_rec_buff, buffer_seek_start, 0);
//	var _message_id = buffer_read(_c_rec_buff, buffer_string);
	
//	var _response = json_decode(_message_id);
	
//	if(ds_map_find_value(_response, "type") == msgType.SET_CARD_STAT)
//	{
//		var _cards = ds_map_find_value(_response, "cards");
//		_cards = json_parse(_cards);
//		for(var i = 0; i < array_length(_cards); i++)
//		{
//			var _levelAndSuit = string_split(_cards[i], "-");
//			var _card = instance_create_layer(x + 66*i, y, "Cards", obj_card);
//			_card.create(ds_map_find_value(ds_cardLevel, _levelAndSuit[0]), ds_map_find_value(ds_cardSuit, _levelAndSuit[1]));
//		}
			
//	}
//}
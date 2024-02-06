data = ds_map_create();
ds_map_add(data, "hostNumber", noone);
ds_map_add(data, "playerNumber", noone);
	
sendMapOverUDP("127.0.0.1", 8080, 100, data, msgType.CREATE_HOST);

















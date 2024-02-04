function sendMapOverUDP(ip, port, size, map)
{
	network_connect_raw(global.client, ip, port);
	var player_buffer = buffer_create(100, buffer_fixed, 100);
	var dataJson = json_encode(map);
	
	ds_map_destroy(map);
	
	buffer_seek(player_buffer, buffer_seek_start, 0);
	buffer_write(player_buffer, buffer_text, dataJson);
	network_send_udp_raw(global.client, ip, port, player_buffer, buffer_tell(player_buffer));
}
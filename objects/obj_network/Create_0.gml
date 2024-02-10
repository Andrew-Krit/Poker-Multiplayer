global.client = network_create_socket(network_socket_udp);
global.hostNumber = undefined;
global.playerNumber = undefined;

enum msgType
{
	CREATE_HOST,
	JOIN_HOST,
	STOP_HOST,	
	GET_NEW_PLAYERS,
	GET_HOSTS
}

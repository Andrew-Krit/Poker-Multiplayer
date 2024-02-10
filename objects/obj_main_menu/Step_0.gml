if(should_host_stop && !is_host_stopped)
{
	should_host_stop = false;
	data = ds_map_create();
	ds_map_add(data, "hostNumber", global.hostNumber);
	//ds_map_add(data, "hostNumber", global.hostNumber);
	sendMapOverUDP("127.0.0.1", 8080, 100, data, msgType.STOP_HOST);
	TweenFire(id, EaseInOutQuart, 0, true, 2, 0, "should_host_stop", should_host_stop, true);
}

if(!did_we_received_hosts && should_i_try_to_get_hosts)
{
	should_i_try_to_get_hosts = false;
	TweenFire(id, EaseInOutQuart, 0, true, 3, 0, "should_i_try_to_get_hosts", should_i_try_to_get_hosts, true);
	
	data = ds_map_create();
	ds_map_add(data, "hosts", noone);
	sendMapOverUDP("127.0.0.1", 8080, 100, data, msgType.GET_HOSTS);
}

if(input_check_pressed("up"))
{
	selected_option_index--;
	selected_option_index = clamp(selected_option_index, 0, array_length(current_page)-1);
}
if(input_check_pressed("down"))
{
	selected_option_index++;
	selected_option_index = clamp(selected_option_index, 0,  array_length(current_page)-1);
}

if(input_check_pressed("action"))
{
	current_page[selected_option_index][1]();
	//selected_option_index = 0;
}
x = mouse_x;
y = mouse_y;

data = ds_map_create();

ds_map_add(data, "x", mouse_x);
ds_map_add(data, "y", mouse_y);
ds_map_add(data, "id", id);

sendMapOverUDP("127.0.0.1", 8080, 100, data);
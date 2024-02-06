ds_cardLevel = ds_map_create();
ds_map_add(ds_cardLevel, "A", 0);
ds_map_add(ds_cardLevel, "2", 1);
ds_map_add(ds_cardLevel, "3", 2);
ds_map_add(ds_cardLevel, "4", 3);
ds_map_add(ds_cardLevel, "5", 4);
ds_map_add(ds_cardLevel, "6", 5);
ds_map_add(ds_cardLevel, "7", 6);
ds_map_add(ds_cardLevel, "8", 7);
ds_map_add(ds_cardLevel, "9", 8);
ds_map_add(ds_cardLevel, "10", 9);
ds_map_add(ds_cardLevel, "J", 10);
ds_map_add(ds_cardLevel, "Q", 11);
ds_map_add(ds_cardLevel, "K", 12);

ds_cardSuit = ds_map_create();
ds_map_add(ds_cardSuit, "Clubs", 0);
ds_map_add(ds_cardSuit, "Diamonds", 1);
ds_map_add(ds_cardSuit, "Hearts", 2);
ds_map_add(ds_cardSuit, "Spades", 3);


data = ds_map_create();
ds_map_add(data, "cards", []);
	
//sendMapOverUDP("127.0.0.1", 8080, 100, data, msgType.SET_CARD_STAT);
deck = ds_list_create();

#macro CARDS_IN_DECK 52


for(var i = 0; i < CARDS_IN_DECK; i++)
{
	ds_list_add(deck);
	
	ds_list_shuffle(deck);
}
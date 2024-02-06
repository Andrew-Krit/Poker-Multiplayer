suit = undefined;
level = undefined;
isDraging = false;
cardArray = [spr_clubs, spr_diamonds, spr_hearts, spr_spades];

xx = -1;
yy = -1;
create = function(_level, _suit)
{
	suit = 	_suit;
	level = _level;
	sprite_index = cardArray[suit];
	image_index = level;
}
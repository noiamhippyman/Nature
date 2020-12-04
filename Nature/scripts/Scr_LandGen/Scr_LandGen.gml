function LandChunk(_size) constructor {
	size = _size;
	tiles = [];
}

function LandTile(spr,img,animate) constructor {
	sprite = spr;
	image = img;
	is_animated = animate;
}
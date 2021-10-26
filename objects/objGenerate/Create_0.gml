/// @description Insert description here
// You can write your code in this editor

width = (room_width/160);
height = (room_height/144);

chunk_size_x = (160/TILE_W);
chunk_size_y = (144/TILE_H);

load_rad = 3;

chunks_grid = ds_grid_create(width,height);
ds_grid_set_region(chunks_grid, 0, 0, width, height, noone);

randomize();
seed = round(random_range(10000000,100000000));

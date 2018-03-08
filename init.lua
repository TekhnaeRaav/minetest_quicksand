--Quicksand
minetest.register_node("quicksand:quicksand_source", {
	description = "Quicksand Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_quicksand.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {

		{
			name = "default_desert_sand.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	paramtype = "light",
	liquid_range = 6,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 4,
	liquidtype = "source",
	liquid_alternative_flowing = "quicksand:quicksand_flowing",
	liquid_alternative_source = "quicksand:quicksand_source",
	liquid_viscosity = 8,
	liquid_renewable = false,
	post_effect_color = {a = 245, r = 213, g = 175, b = 100},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 0},
	sounds = default.node_sound_water_defaults(),
})
--Flowing Quicksand
minetest.register_node("quicksand:quicksand_flowing", {
	description = "Flowing Quicksand",
	drawtype = "flowingliquid",
	tiles = {"default_quicksand_flowing.png"},
	special_tiles = {
		{
			name = "default_quicksand_flowing.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "default_quicksand_flowing.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 4,
	liquidtype = "flowing",
	liquid_alternative_flowing = "quicksand:quicksand_flowing",
	liquid_alternative_source = "quicksand:quicksand_source",
	liquid_viscosity = 8,
	liquid_renewable = false,
	post_effect_color = {a = 240, r = 213, g = 175, b = 100},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, cools_lava = 0},
	sounds = default.node_sound_water_defaults(),
})

--Jungle Sand Pit
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_rainforest_litter"},
	sidelen = 16,
	noise_params = {
		offset = -2,
		scale = 5.0,
		spread = {x = 50, y = 50, z = 50},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"rainforest"},
	y_min = 1,
	y_max = 31000,
	decoration = "quicksand:quicksand_source",
})

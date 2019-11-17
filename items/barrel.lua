--[[

	TechAge
	=======

	Copyright (C) 2019 Joachim Stolberg

	GPL v3
	See LICENSE.txt for more information
	
	Barrel/Liquid/Canister/Water

]]--

local S = techage.S

minetest.register_craftitem("techage:water", {
	description = S("Water"),
	inventory_image = "techage_liquid2_inv.png^[colorize:#0b6eca:120^techage_liquid1_inv.png",
	groups = {not_in_creative_inventory=1},
	
})

minetest.register_craftitem("techage:river_water", {
	description = S("Water"),
	inventory_image = "techage_liquid2_inv.png^[colorize:#189dc3:120^techage_liquid1_inv.png",
	groups = {not_in_creative_inventory=1},
	
})

minetest.register_craftitem("techage:barrel_water", {
	description = S("Water Barrel"),
	inventory_image = "techage_barrel_inv.png^[colorize:#0b6eca:120^techage_symbol_liquid.png",
	stack_max = 1,
})

minetest.register_craftitem("techage:barrel_river_water", {
	description = S("River Water Barrel"),
	inventory_image = "techage_barrel_inv.png^[colorize:#189dc3:120^techage_symbol_liquid.png",
	stack_max = 1,
})

minetest.register_craftitem("techage:liquid", {
	description = S("empty"),
	inventory_image = "techage_liquid2_inv.png^[colorize:#BFBFBF:180^techage_liquid1_inv.png",
	groups = {not_in_creative_inventory=1},
})

minetest.register_craftitem("techage:ta3_barrel_empty", {
	description = S("TA Empty Barrel"),
	inventory_image = "techage_barrel_inv.png^[colorize:#BFBFBF:180",
})

minetest.register_craftitem("techage:ta3_canister_empty", {
	description = S("TA3 Canister"),
	inventory_image = "techage_canister_filling.png^[colorize:#BFBFBF:180^techage_canister_frame.png",
})


minetest.register_craft({
	output = 'techage:ta3_barrel_empty 6',
	recipe = {
		{'techage:iron_ingot', 'techage:iron_ingot', 'techage:iron_ingot'},
		{'techage:iron_ingot', '', 'techage:iron_ingot'},
		{'techage:iron_ingot', 'techage:iron_ingot', 'techage:iron_ingot'},
	}
})

minetest.register_craft({
	output = 'techage:ta3_canister_empty 6',
	recipe = {
		{'basic_materials:plastic_sheet', 'basic_materials:plastic_sheet', 'basic_materials:plastic_sheet'},
		{'basic_materials:plastic_sheet', '', 'basic_materials:plastic_sheet'},
		{'basic_materials:plastic_sheet', 'basic_materials:plastic_sheet', 'basic_materials:plastic_sheet'},
	}
})

techage.register_liquid("bucket:bucket_water", "bucket:bucket_empty", 1, "techage:water")
techage.register_liquid("bucket:bucket_river_water", "bucket:bucket_empty", 1, "techage:river_water")

techage.register_liquid("techage:barrel_water", "techage:ta3_barrel_empty", 10, "techage:water")
techage.register_liquid("techage:barrel_river_water", "techage:ta3_barrel_empty", 10, "techage:river_water")

techage.register_liquid("bucket:bucket_lava", "bucket:bucket_empty", 1, "default:lava_source")
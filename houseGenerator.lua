-- House generator by MellowYellow based on the Building Generator by Kenney

sizeX   = math.random(3,  6) -- Random size on X axis from 3 to 6
sizeZ   = math.random(3,  6) -- Random size on Z axis from 3 to 6
--sizeX   = 5
--sizeZ   = 5
floors  = math.random(1,  2) -- Random number of floors from 1 to 2
windows = math.random(4, 10) -- Random number of windows from 4 to 10

forge.clear(); -- Clear previous model

randomWindows = { "Walls/window_closed", "Walls/window_squareGlass", "Walls/window_squareGlassLarge", "Walls/window_decorativeLarge" }
randomWindow  = randomWindows[math.random(#randomWindows)];
-- Door
randomDoors = { "Walls/doorway_doorGlass", "Walls/doorway_doorSolid", "Walls/doorway_doorWoodWindow" }
randomDoor  = randomDoors[math.random(#randomDoors)];
doorLocation = (math.random(sizeX / 2) * 2 ) -1

	for x = 0, sizeX - 1 do -- Repeat size on X axis
	
		buildWall = "Walls/wall"
		--if floor == 0 then buildWall = "Walls/wall_border" end -- Place wall border on bottom
		--forge.build("Walls/wall_border", {x, 0, 0}, {0, 0, 0})
		
		if(x % 2 == 0) then 
			buildWall = randomWindow 
			if floors > 1 then
				if math.random(0, 6) == 0 then forge.build("City/balcony_basic", {x, 1, -1}, {0, 180, 0}) end -- Add a balcony
				if math.random(0, 6) == 0 then forge.build("City/balcony_basic", {x, 1, sizeZ}, {0, 0, 0}) end -- Add a balcony
			end
		end

		-- Place wall on far side
		forge.build(buildWall, {x, 0, sizeZ}, {0, 0, 0}) -- Place wall
		-- On near side, place door if in the right spot, else place a wall
		if x==doorLocation then
			forge.build(randomDoor, {doorLocation, 0, 0}, {0, 0, 0}) 
		else
			forge.build(buildWall, {x, 0, 0}, {0, 0, 0}) -- Place wall
		end

		if floors > 1 then
			forge.build(buildWall, {x, 1, 0}, {0, 0, 0}) -- Place wall
			forge.build(buildWall, {x, 1, sizeZ}, {0, 0, 0}) -- Place wall		
		end

		forge.build("Walls/cornice_shallow", {x, floors -1 + 0.0, -1}, {0, 180, 0}) -- Place cornice
		forge.build("Walls/cornice_shallow", {x, floors -1 + 0.0, sizeZ}, {0, 0, 0}) -- Place cornice
	
	end

	for z = 0, sizeZ - 1 do -- Repeat size on X axis
	
		buildWall = "Walls/wall"

		if(z % 2 == 0) then 
			buildWall = randomWindow 
			if floors > 1 then
				if math.random(0, 6) == 0 then forge.build("City/balcony_basic", {-1, 1, z}, {0, -90, 0}) end -- Add a balcony
				if math.random(0, 6) == 0 then forge.build("City/balcony_basic", {sizeX, 1, z}, {0, 90, 0}) end -- Add a balcony
			end
		end
		
		forge.build(buildWall, {0, 0, z}, {0, 90, 0}) -- Place wall
		forge.build(buildWall, {sizeX, 0, z}, {0, 90, 0}) -- Place wall
	
		if floors > 1 then
			forge.build(buildWall, {0, 1, z}, {0, 90, 0}) -- Place wall
			forge.build(buildWall, {sizeX, 1, z}, {0, 90, 0}) -- Place wall		
		end
		forge.build("Walls/cornice_shallow", {-1, floors -1, z}, {0, -90, 0}) -- Place cornice
		forge.build("Walls/cornice_shallow", {sizeX, floors -1, z}, {0, 90, 0}) -- Place cornice
	end


-- Roof
-- How many levels of roof are required
if sizeX < sizeZ then
	roofLevels=sizeX -2
	roofTopLength=sizeZ-(roofLevels+1)
else
	roofLevels=sizeZ -2
	roofTopLength=sizeX-(roofLevels+1)
end

-- Place all levels except the top level
roofHeight=floors
for roofLevelLoop = 0, roofLevels do
    forge.build("Roofs/roof_slopeCorner", {0+(roofLevelLoop*0.5),       roofHeight, sizeZ-1-(0.5 * roofLevelLoop)}, {0,180, 0}) -- Place roof corner
    forge.build("Roofs/roof_slopeCorner", {sizeX-(roofLevelLoop*0.5)-1, roofHeight, sizeZ-1-(0.5 * roofLevelLoop)}, {0,-90, 0}) -- Place roof corner
    forge.build("Roofs/roof_slopeCorner", {0+(roofLevelLoop*0.5),       roofHeight, 0+(0.5 * roofLevelLoop)},       {0, 90, 0})  -- Place roof corner
    forge.build("Roofs/roof_slopeCorner", {sizeX-(roofLevelLoop*0.5)-1, roofHeight, 0+(0.5 * roofLevelLoop)},       {0,  0, 0})   -- Place roof corner
    -- Walls along the short side of the house
    for roofSideLoop = 0, sizeX - 3 - roofLevelLoop do
        forge.build("Roofs/roof_slope", {1+roofSideLoop+(0.5 * roofLevelLoop), roofHeight, sizeZ - 1 -(0.5 * roofLevelLoop)}, {0, 90, 0}) -- Place roof
        forge.build("Roofs/roof_slope", {1+roofSideLoop+(0.5 * roofLevelLoop), roofHeight, 0 + (0.5 * roofLevelLoop)}, {0, 90, 0}) -- Place roof
    end
    -- Walls along the long side of the house
    for roofSideLoop = 0, sizeZ - 3 - roofLevelLoop do
        forge.build("Roofs/roof_slope", {0+(0.5 * roofLevelLoop), roofHeight, sizeZ-2-roofSideLoop-(0.5 * roofLevelLoop) }, {0, 0, 0}) -- Place roof
        forge.build("Roofs/roof_slope", {sizeX-1-(0.5 * roofLevelLoop), roofHeight, sizeZ-2-roofSideLoop-(0.5 * roofLevelLoop) }, {0, 0, 0}) -- Place roof
    end
    roofHeight=roofHeight+0.5
end

-- Place the topmost roof level
if roofTopLength==1 then 
	forge.build("Buildings/roof_point", {-0.5+(sizeX/2), roofHeight, -0.5+(sizeZ/2)}, {0, 0, 0}) -- Roof top is 1x1
else
	if sizeX > sizeZ then
		for ridgeLength = 0, roofTopLength-2 do	-- -2 for the two end pieces
			forge.build("Roofs/roof_slope", {1+(0.5 * roofLevels)+ridgeLength, roofHeight, 0.5+(roofLevels * 0.5) }, {0, 90, 0}) -- Place roof
		end
		forge.build("Buildings/roof_half", {1.5+(0.5 * roofLevels)+roofTopLength-2, roofHeight, 0.5+(roofLevels * 0.5) }, {0, 90, 0}) -- Place end
		forge.build("Buildings/roof_half", {0.5+(0.5 * roofLevels), roofHeight, 0.5+(roofLevels * 0.5) }, {0, -90, 0}) -- Place end
	else
		for ridgeLength = 0, roofTopLength-2 do	-- -2 for the two end pieces
			forge.build("Roofs/roof_slope", {0.5+(roofLevels * 0.5), roofHeight, 1+(0.5 * roofLevels)+ridgeLength }, {0, 0, 0}) -- Place roof
		end
		forge.build("Buildings/roof_half", {0.5+(roofLevels * 0.5), roofHeight,  1.5+(0.5 * roofLevels)+roofTopLength-2}, {0, 0, 0}) -- Place end
		forge.build("Buildings/roof_half", {0.5+(roofLevels * 0.5), roofHeight, 0.5+(0.5 * roofLevels) }, {0, 180, 0}) -- Place end	
	end
end


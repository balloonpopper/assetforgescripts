forge.clear()

--stringToProcess="abcdefghijklmnopqrstuvwxyz"
--stringToProcess="asset forge"
stringToProcess="mellow yellow"

stringLength=string.len(stringToProcess)
offset = 0
lx=-6	-- letter x coord
ly=0

forge.build("Western/track_mineBasicStraight", {-1,0,0}, {0,0,0})
forge.build("Western/cart", {-1,0,0}, {0,0,0})

for loop = 0, stringLength do
	thechar=string.sub(stringToProcess, loop, loop)
	if thechar == "a" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up
		-- body
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+2}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 0, 3 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		for s = 0, 3 do forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right	/-	
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+2}, {0,90,0}) -- down to right   /-
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left  -/
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+2}, {0,180,0}) -- down to left  -/
		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,0,0}) -- up to right  /-
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end
	if thechar == "b" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up
		-- body
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 2, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+2}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+1}, {0,90,0})  --vertical tracks
		forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+3}, {0,90,0})  --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+2}, {0,270,0}) -- left to up -/		
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,270,0}) -- left to up -/
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left  -\
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right \-
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right /-
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+2}, {0,180,0}) -- down to left  -\
		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end		
	if thechar == "c" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up
		-- body
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,270,0}) -- left to up   -/
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left -\
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right  /-
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right  /-
		--end piece
		for s = 4, 5 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
	end	
	if thechar == "d" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up
		-- body
		for s = 1, 2 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 1, 2 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right /-

		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+0}, {0,270,0}) -- left to up  -/
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+3}, {0,0,0}) -- up to right  \-
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+1}, {0,270,0}) -- left to up  -/

		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+4}, {0,180,0}) -- down to left -\
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+1}, {0,90,0}) -- down to right /-
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+3}, {0,180,0}) -- down to left	-\
		forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+2}, {0,90,0})	

		--end piece
		for s = 3, 5 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
	end		
	if thechar == "e" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up  -/
		-- body
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+2}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+2}, {0,90,0}) -- down to right		/-
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right		/-
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right   \-
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,270,0}) -- left to up   -/
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left  -\
		--end piece
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end
	if thechar == "f" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up  -/
		-- body
		for s = 1, 4 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+2}, {0,0,0}) end --horizontal tracks
		for s = 1, 4 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+2}, {0,90,0}) -- down to right	-\	
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right	-\	
		--end piece
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks

	end	
	if thechar == "g" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up
		-- body
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 2, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+2}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+1}, {0,90,0})  --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,270,0}) -- left to up -/
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left  -\
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right \-
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right /-
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+2}, {0,180,0}) -- down to left  -\
		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end	
		
	if thechar == "h" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up
		-- body
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+2}, {0,0,0}) end --horizontal tracks
		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+2}, {0,90,0}) -- down to right  /-
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+2}, {0,180,0}) -- down to left  /-
		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,0,0}) -- up to right    \-
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end	
	if thechar == "i" then 
		-- start piece
		-- body
		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+2,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+0}, {0,270,0}) -- left to up   -/
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+4}, {0,90,0}) -- down to right  /-
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+4}, {0,180,0}) -- down to left -\
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+0}, {0,0,0}) -- up to right  \-

		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,270,0}) -- left to up   -/
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right  /-
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left -\
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right  \-
		--end piece
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end		
	if thechar == "j" then 
		-- start piece
		-- body
		for s = 0, 1 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 1, 4 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+2,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+0}, {0,270,0}) -- left to up
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+4}, {0,90,0}) -- down to right  
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+4}, {0,180,0}) -- down to left

		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right  /-
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left -\
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right  \-
		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+5,0,ly+4}, {0,180,0}) -- down to left  -\
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+5,0,ly+0}, {0,0,0}) -- up to right \-
	end		
	if thechar == "k" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up
		-- body
		for s = 1, 2 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+2}, {0,0,0}) end --horizontal tracks
		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+2}, {0,90,0}) -- down to right
		-- top arm
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+2}, {0,270,0}) -- left to up
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+3}, {0,90,0}) -- down to right
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+3}, {0,270,0}) -- left to up
		forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+4}, {0,90,0})
		-- bottom arm
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+2}, {0,180,0}) -- down to left
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+1}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+1}, {0,180,0}) -- down to left
		forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+0}, {0,90,0})

		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end	
	if thechar == "l" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up
		-- body

		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 1, 4 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,270,0}) -- left to up
		--end piece
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end	
	if thechar == "m" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up
		-- body
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+s}, {0,90,0}) end --vertical tracks
		for s = 2, 3 do forge.build("Western/track_mineBasicStraight", {lx+2,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,270,0}) -- left to up
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right

		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+4}, {0,180,0}) -- down to left
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+4}, {0,90,0}) -- down to right
		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end			
	if thechar == "n" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up
		-- body
		for s = 0, 3 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right
		forge.build("Western/track_mineBasicCurve", {lx+1,0,ly+4}, {0,180,0}) -- down to left

		forge.build("Western/track_mineBasicCurve", {lx+1,0,ly+3}, {0,0,0}) -- up to right  \-
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+3}, {0,180,0}) -- down to left  -\
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+2}, {0,0,0}) -- up to right  \-
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+2}, {0,180,0}) -- down to left  -\		
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+1}, {0,0,0}) -- up to right  \-
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+1}, {0,180,0}) -- down to left	-\		
		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,0,0}) -- up to right   \-
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end	
	if thechar == "o" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up  -/
		-- body
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,270,0}) -- left to up  -/
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left  -\
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right    \-
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right /-
		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end
	if thechar == "p" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up
		-- body
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+2}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+3}, {0,90,0}) --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+2}, {0,270,0}) -- left to up   -/
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left   -\
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right /-
		--end piece
		
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end			
	if thechar == "q" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up  -/
		-- body
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,270,0}) -- left to up  -/
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left  -\
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right    \-
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right /-
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+1}, {0,180,0}) -- down to left  -\
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+1}, {0,0,0}) -- up to right    \-
		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end	
	if thechar == "r" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up
		-- body
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+2}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+3}, {0,90,0}) --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+2}, {0,270,0}) -- left to up
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+2}, {0,90,0}) -- down to right		
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+1}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+1}, {0,180,0}) -- down to left
		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end			
	if thechar == "s" then 
		-- start piece
		-- body
		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+2}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,270,0}) -- left to up
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+2}, {0,180,0}) -- down to left
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+2}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right
		forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+1}, {0,90,0}) --vertical tracks		
		forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+3}, {0,90,0}) --vertical tracks	
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right    \-	
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left  -\
		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end		


	if thechar == "t" then 
		-- start piece
		-- body
		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+2,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+0}, {0,270,0}) -- left to up
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+4}, {0,90,0}) -- down to right
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+4}, {0,180,0}) -- down to left
		--end piece
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks

	end
	if thechar == "u" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up  -/
		-- body
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 1, 4 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		for s = 1, 4 do forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,270,0}) -- left to up  -/
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right    \-
		
		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end	
	if thechar == "v" then 
		-- start piece
		-- body
		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks

		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+0}, {0,270,0}) -- left to up  -/
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+0}, {0,0,0}) -- up to right    \-

		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+1}, {0,180,0}) -- down to left  -\
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+1}, {0,90,0}) -- down to right /-
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+1}, {0,270,0}) -- left to up  -/
		forge.build("Western/track_mineBasicCurve", {lx+1,0,ly+1}, {0,0,0}) -- up to right    \-

		forge.build("Western/track_mineBasicCurve", {lx+1,0,ly+2}, {0,180,0}) -- down to left  -\
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+2}, {0,90,0}) -- down to right /-
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+2}, {0,270,0}) -- left to up  -/
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+2}, {0,0,0}) -- up to right    \-
		for s = 3, 4 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks			
		for s = 3, 4 do forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+s}, {0,90,0}) end --vertical tracks			
		
		--end piece
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end
	if thechar == "w" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up  -/
		-- body
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 1, 4 do forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+s}, {0,90,0}) end --vertical tracks
		for s = 1, 4 do forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+s}, {0,90,0}) end --vertical tracks
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,270,0}) -- left to up  -/
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right    \-
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+0}, {0,270,0}) -- left to up  -/	
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+0}, {0,0,0}) -- up to right    \-		
		for s = 1, 2 do forge.build("Western/track_mineBasicStraight", {lx+2,0,ly+s}, {0,90,0}) end --vertical tracks
		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,0,0}) -- up to right
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end	
	if thechar == "x" then 
		-- start piece
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,270,0}) -- left to up  -/
		-- body
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+4}, {0,90,0}) -- down to right  /-
		forge.build("Western/track_mineBasicCurve", {lx+1,0,ly+4}, {0,180,0}) -- down to left  -\

		forge.build("Western/track_mineBasicCurve", {lx+1,0,ly+3}, {0,0,0}) -- up to right  \-
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+3}, {0,180,0}) -- down to left  -\
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+2}, {0,0,0}) -- up to right  \-
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+2}, {0,180,0}) -- down to left  -\		
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+1}, {0,0,0}) -- up to right  \-
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+1}, {0,180,0}) -- down to left	-\
		
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+1}, {0,90,0}) -- down to right /-		
		forge.build("Western/track_mineBasicCurve", {lx+1,0,ly+1}, {0,270,0}) -- left to up  -/
		forge.build("Western/track_mineBasicCurve", {lx+1,0,ly+2}, {0,90,0}) -- down to right /-		
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+2}, {0,270,0}) -- left to up  -/
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+3}, {0,90,0}) -- down to right /-		
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+3}, {0,270,0}) -- left to up  -/
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+4}, {0,90,0}) -- down to right /-		
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left	-\
		forge.build("Western/track_mineBasicStraight", {lx+2,0,ly+2}, {0,0,0}) --horizontal tracks
		--end piece
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+0}, {0,0,0}) -- up to right   \-
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end		
	if thechar == "y" then 
		-- start piece
		-- body
		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks

		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+0}, {0,270,0}) -- left to up  -/
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+0}, {0,0,0}) -- up to right    \-

		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+2}, {0,180,0}) -- down to left  -\
		forge.build("Western/track_mineBasicCurve", {lx+2,0,ly+2}, {0,90,0}) -- down to right /-
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+2}, {0,270,0}) -- left to up  -/
		forge.build("Western/track_mineBasicCurve", {lx+1,0,ly+2}, {0,0,0}) -- up to right    \-

		forge.build("Western/track_mineBasicCurve", {lx+1,0,ly+3}, {0,180,0}) -- down to left  -\
		forge.build("Western/track_mineBasicCurve", {lx+3,0,ly+3}, {0,90,0}) -- down to right /-
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+3}, {0,270,0}) -- left to up  -/
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+3}, {0,0,0}) -- up to right    \-
		forge.build("Western/track_mineBasicStraight", {lx+2,0,ly+1}, {0,90,0})  --vertical tracks		
		forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+4}, {0,90,0})  --vertical tracks			
		forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+4}, {0,90,0})  --vertical tracks			
		
		--end piece
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end
	if thechar == "z" then 
		-- start piece
		-- body
		for s = 0, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+2}, {0,0,0}) end --horizontal tracks
		for s = 1, 3 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+4}, {0,0,0}) end --horizontal tracks
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+2}, {0,270,0}) -- left to up   -/
		forge.build("Western/track_mineBasicCurve", {lx+4,0,ly+4}, {0,180,0}) -- down to left  /-
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+0}, {0,0,0}) -- up to right     \-
		forge.build("Western/track_mineBasicCurve", {lx+0,0,ly+2}, {0,90,0}) -- down to right  /-
		forge.build("Western/track_mineBasicStraight", {lx+4,0,ly+3}, {0,90,0}) --vertical tracks		
		forge.build("Western/track_mineBasicStraight", {lx+0,0,ly+1}, {0,90,0}) --vertical tracks		
		--end piece
		for s = 4, 5 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
	end		
	if thechar ==  " " then 
		-- start piece
		-- body
		for s = 0, 4 do forge.build("Western/track_mineBasicStraight", {lx+s,0,ly+0}, {0,0,0}) end --horizontal tracks
		--end piece
		forge.build("Western/track_mineBasicStraight", {lx+5,0,ly+0}, {0,0,0}) --horizontal tracks
	end
	lx = lx + 6
end

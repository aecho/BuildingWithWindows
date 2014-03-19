local myBuilding = display.newRect( 200, 500, 300, 500)
 --myBuilding.x = myBuilding.x + ( bldgWidth * 0.25 )
 --myBuildingShadow.y = myBuilding.y * 1.0125
 --myBuildingShadow.fill = paintWarmGrey
local onColor={0.525,0.6125,0.575,1}
local offColor={1,1,1,1}

local function pickColor()
	local index=math.random(0,1)
	if index==0 then
		local myColor=onColor
	elseif index==1 then
		local myColor=offColor
	end
	return myColor
end

for i = 1, 6 do
	for j = 1, 4 do
		local mywindow = display.newRect(100+j*50, 300+i*60, 20,20)
		local windowColor=pickColor()
	mywindow:setFillColor(windowColor)
	end
end

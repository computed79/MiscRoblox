-- Realism Lighting
-- HOW TO USE:
-- Put this into a part/attachment/wherever you want the light to be.
-- Change the values to whatever you want.
-- Why is this useful: the default roblox lights basically paint a light over the range with no taper
-- leading to some weird effects: this script will create a light that fades out over distance, like in real life.

local range = 32 -- change this to whatever range you want (less than 60)
local brightness = 32 -- this is the brightness of the light
local taper = 2 -- 1 for linear scaling, 2 for realism (set between 1 and 2) 
local increment = 1 -- lower values = more realism, lower values cause lag
local shadows = true -- should the lights cast shadows
local color = Color3.new(1, 1, 1) -- color

for i=1,range,increment do
	local light = Instance.new("PointLight")
	light.Name = i
	light.Parent = script.Parent
	light.Brightness = brightness/i^taper -- inverse square law
	light.Range = i
	light.Shadows = shadows
	light.Color = color
end

-- computed079

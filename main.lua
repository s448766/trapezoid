-----------------------------------------------------------------------------------------
--
--
-- Created By Md Faiyaz Hossain
--2018-02-26
--
--
-----------------------------------------------------------------------------------------

local lengthOfTrapozoid
local areaOfTrapozoid
local baseOfTrapozoid
local heightOfTrapozoid

display.setDefault("background", 0.2, 0.5, 0.2)
local lengthOfTrapozoidTextField = native.newTextField( display.contentCenterX - 500, display.contentCenterY + 200, 450, 95 )
lengthOfTrapozoidTextField.id = "length textField"



local baseOfTrapozoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 95 )
baseOfTrapozoidTextField.id = "base textField"


local heightOfTrapozoidTextField = native.newTextField( display.contentCenterX + 500, display.contentCenterY + 200, 450, 95 )
heightOfTrapozoidTextField.id = "height textField"


local areaOfTrapozoidTextField = display.newText( "The answer is", display.contentCenterX - 500, display.contentCenterY + 500, native.systemFont, 125 )
display.newText("please enter a digit", display.contentCenterX, display.contentCenterY - 300, native.systemFont, 125)

areaOfTrapozoidTextField.id = "area textField"

areaOfTrapozoidTextField:setFillColor( 0, 1, 1 )

local calculateButton = display.newImageRect( "enterButton.png", 406, 157 )

calculateButton.x = display.contentCenterX + 1000

calculateButton.y = display.contentCenterY + 200

calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    

    -- This will calculates the area of a Trapozoid.
    lengthOfTrapozoid = lengthOfTrapozoidTextField.text
    heightOfTrapozoid = heightOfTrapozoidTextField.text
    baseOfTrapozoid = baseOfTrapozoidTextField.text
 
     lengthOfTrapozoid = lengthOfTrapozoidTextField.text
    
    areaOfTrapozoid = lengthOfTrapozoid + baseOfTrapozoid * heightOfTrapozoid / 2
        areaOfTrapozoidTextField.text = "The area is " .. areaOfTrapozoid

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )
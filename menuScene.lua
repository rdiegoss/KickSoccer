-----------------------------------------------------------------------------------------
--
-- Menu Scene 
--
-----------------------------------------------------------------------------------------
display.setStatusBar( display.HiddenStatusBar )

local storyboard = require ("storyboard")
local scene = storyboard.newScene()
--local scene = display.newImage("imagens/MenukickSoccer.png" , 160, 240 , true )
local btnJogar = display.newRect(220, 320, 300, 50)

local function btnPlay(event)
	print( "ta entrando no play" )
	storyboard.gotoScene("fase1", {effect = "slideDown"})	
end

function scene:createScene( event )
	local group = self.view

	local scene = display.newImage("imagens/MenukickSoccer.png" , 160, 240 , true )
	group:insert(scene)
	
	--group:insert(btnJogar)
	--btnJogar.strokeWidth = 3
	btnJogar.alpha = 0.1

	--btnJogar:addEventListener( "tap", btnJogar )
	
end

function scene:enterScene( event )
	btnJogar:addEventListener( "tap", btnPlay )
end

function scene:exitScene( event )
	local group = self.view
end



scene:addEventListener( "createScene", scene)
scene:addEventListener( "enterScene", scene)
scene:addEventListener( "exitScene", scene)
return scene

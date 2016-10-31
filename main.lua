-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
display.setStatusBar( display.HiddenStatusBar )

local storyboard = require ("storyboard")
storyboard.purgeOnSceneChange = true

storyboard.gotoScene("menuScene", {effect = "flip"})
--[[local fisica = require("physics")
--fisica.setDrawMode("hybrid")
local cenario = display.newImage("imagens/stadium2.jpg" , 0, 0, true )
local bola = display.newImage("imagens/ball.png" , 70, 70, true )
local solo = display.newRect(0, 480, 600, 0	)
local teto = display.newRect(0, -1, 700, 1)
local ladoDireito = display.newRect(323, 250, 1, display.contentHeight)
local ladoEsquerdo = display.newRect(0, 250, 1, display.contentHeight)
local score = 0
local points = display.newText( "Score: 0", 270, 100, 200, 200, "Arial", 30 )

math.randomseed(os.time())

fisica.start()
fisica.setGravity(0, 9, 8)
fisica.addBody(bola, {bounce = 0.5, radius= 37, friction = 1.0})
fisica.addBody(solo, "static")
fisica.addBody(ladoDireito, "static")
fisica.addBody(ladoEsquerdo, "static")
fisica.addBody(teto, "static")
	
function bola:touch(event)
	if event.phase == "began" then
		points.text = nil;
		score = score + 1
		points = display.newText( "Score: "..score, 270, 100, 200, 200, "Arial", 30 )
		local bola = event.target
		bola:applyLinearImpulse( 0, -0.3, event.x, event.y )
	elseif event.phase == "ended" then
		if score == 10 then
			local bola = event.target
			bola:applyLinearImpulse( 0, -0.4, event.x, event.y )
		elseif score == 20 then
			bola:applyLinearImpulse( 0, -0.5, event.x, event.y )
		elseif score == 30 then
			bola:applyLinearImpulse( 0, -0.6, event.x, event.y )
		end
    end
end

function bola:collision(event)
	points.text = nil;
	score = 0
	--points.setFillCollor(0,0)
	points = display.newText( "Score: 0", 270, 100, 200, 200, "Arial", 30 )

end

function mostrarBola()
	bola.x = math.random(50, 200)
	bola.y = math.random(50, 200)

	transition.to( bola, {time = 500, xScale = 0.3, yScale = 0.3, transition = easing.inOutExpo})
end

--Events
mostrarBola()
bola:addEventListener( "touch", bola )
bola:addEventListener( "collision", bola )]]

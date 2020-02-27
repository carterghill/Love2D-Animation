require('Animation')

function love.load()
    anim = Animation:new("Run")
end

function love.draw()
    love.graphics.print(anim)
end

function love.update()

end

function love.keypressed(key, scancode, isrepeat)
   if key == "escape" then
      love.event.quit()
   end
end

-- Create table for Animation object
Animation = {}

-- Create a new animation from the given folder
function Animation:new(folder, tf)

    -- Get the items in the given folder
    files = love.filesystem.getDirectoryItems(folder)
    
    -- The animation object
    anim = {}

    -- The images loaded into the animation
    anim.images = {}
    anim.index = 1
    
    -- Time frame for the animation (1/15 is default)
    anim.tf = tf or 1/15 
    anim.timer = 0
    
    -- Add each image in the folder into the images table
    for k, file in ipairs(files) do
        path = folder.."/"..file
        anim.images[#anim.images+1] = love.graphics.newImage(path)
    end
    
    -- Play the animation
    function anim:play()
        
        love.graphics.draw(self.images[self.index])
        
        -- If the frame timer is exceeded, move to next frame
        self.timer = self.timer + love.timer.getDelta()
        if self.timer > self.tf then
            self.index = self.index + 1
            self.timer = 0
            if self.index > #self.images then
                self.index = 1
            end
        end

    end

    return anim

end

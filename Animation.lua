-- Create table for Animation object
Animation = {}

-- Create a new animation from the given folder
function Animation:new(folder)

    -- Get the items in the given folder
    files = love.filesystem.getDirectoryItems(folder)
    
    -- The animation object
    anim = {}

    -- The images loaded into the animation
    anim.images = {}
    anim.index = 1
    
    -- Add each image in the folder into the images table
    for k, file in ipairs(files) do
        path = folder.."/"..file
        anim.images[#anim.images+1] = love.graphics.newImage(path)
    end
    
    -- Play the animation
    function anim:play()
        
        love.graphics.draw(self.images[self.index])

        self.index = self.index + 1
        if self.index > #self.images then
            self.index = 1
        end

    end

    return anim

end

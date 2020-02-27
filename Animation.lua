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
    
    -- Add each image in the folder into the images table
    for k, file in ipairs(files) do
        path = folder.."/"..file
        anim.images[#anim.images+1] = love.graphics.newImage(path)
    end
    
    -- Play the animation
    function anim:play()

    end

    return anim

end

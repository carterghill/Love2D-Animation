-- Create table for Animation object
Animation = {}

-- Create a new animation from the given folder
function Animation:new(folder)

    -- Get the items in the given folder
    files = love.filesystem.getDirectoryItems(folder)

    return files

end

local colors = {
    "black", 
    "brown",
    "red", 
    "orange", 
    "yellow",
    "green",
    "blue",
    "violet",
    "grey",
    "white",
  }
  
local color_code = function(color)
    if (type(color)=="string") then
      for i, name in ipairs(colors) do
        if (name == color) then
          return i - 1
        end
      end
    end

    if (type(color)=="number") then
      return colors[color +1]
    end
end


return {
  color_code = color_code,
  colors = function()
      return colors
    end,

}

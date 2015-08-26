function gadget:GetInfo()
  return {
    name      = "GokhanAI.Eyes",
    desc      = "Eyes for Gokhan",
    author    = "_Shaman",
    date      = "26 aug",
    license   = "???",
    layer     = -5  ,
    enabled   = true,
  }
end

if (gadgetHandler:IsSyncedCode()) then
  function gadget:Initialize()
    local mapx = Game.mapX
    local mapy = Game.mapY
  end
end

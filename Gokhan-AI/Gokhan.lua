function gadget:GetInfo()
  return {
    name      = "GokhanAI",
    desc      = "Air supremecy AI",
    author    = "ArchShaman",
    date      = "26 August",
    license   = "???",
    layer     = -5  ,
    enabled   = true,
  }
end

local allyteams = {} -- we want to split the ais into seperate ally teams.
local allyteaminfo = {} -- here we want to hold information for all teams.

--functions--

if (gadgetHandler:IsSyncedCode()) then
  
  function gadget:Initialize()
    local allylist = Spring.GetAllyTeamList()
    for i=1,#allylist do
      allyteaminfo[i] = {myais = {},
                         aiinfo = {},
                         enemyproduction = {},
                         myfighters = {},
                         enemyplanesinlos = {},
                         enemyunitsinlos = {},
                         myunits = {}}
      allyteams[i] = {}
    end
    Spring.Echo("Gokhan AI started with " .. #allylist .. "alliances.. distributing AIs")

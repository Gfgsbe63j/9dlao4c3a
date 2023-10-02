repeat wait() until game:IsLoaded()
local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function(antiafk2)bb:CaptureController()bb:ClickButton2(Vector2.new())
end)
local GC = getconnections or get_signal_cons
if GC then
    for _,v in pairs(GC(game:GetService("Players").LocalPlayer.Idled)) do
        v:Disable()
    end
else
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
            game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            wait(1)
            game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end
    end)
end
local PlayerData = game:GetService("Players").LocalPlayer.PlayerGui.Data
local ResDraw = game:GetService("ReplicatedStorage").Config.ResDraw
local Remotes = game:GetService("ReplicatedStorage").Remotes
local Bools = {
	AutoKill = false,
	lvlupW = false,
	SelectMode = false,
	AutoHatch = false,
	AdvanceHatch = false,
	GodMode = false,
	Hatch3xGP = false,
	Hatch10xGP = false,
	AutoLevel = false,
	AutoSP = false,
	AutoACHRew = false,
	AutoTimeRew = false,
	AutoShopRew = false,
	AutoEquipWep = false,
	AutoEquipPet = false
}
local Values = {
	SPAdd = 1,
	SPtoIncrease = "AP",
	HitPerCycle = 10,
	CurrentHatching = {},
	PlayerPetInventory = {},
	PetInventoryDesign = {},
	Pet1 = "",
	Pet2 = "",
	Pet3 = "",
	Pet4 = "",
	Pet5 = ""
}
local WorldHatch = {}
local CurrentWorldList = {}
local WorldHatch2 = {}
local Skpp = {
	["Health"] = "HP",
	["Attack Power"] = "AP",
	["Wealth"] = "CoinValueAdd",
	["Weapon Luck"] = "DropRateAdd"
}
local Skp = {"Health", "Attack Power", "Wealth", "Weapon Luck"}
local WorldAntiDuplicate = "bruh"

--functions
local function PetName(PetType)
	local Name = ""
	local ResPet = game:GetService("ReplicatedStorage").Config.ResPet
	for i,v in pairs(require(ResPet)) do
		if v.Id == PetType then
			Name = getrenv().shared.TranslationHelper.TranslateByKey(v.NameTag)
		end
	end	
	return Name
end
local function PetMaxLevel(PetType)
	local PetRarity = 1
	local ResPet = game:GetService("ReplicatedStorage").Config.ResPet
	for i,v in pairs(require(ResPet)) do
		if v.Id == PetType then
			PetRarity = v.Rarity
		end
	end
	local GameConfig = game:GetService("ReplicatedStorage").Config.GameConfig
	return require(GameConfig).MaxPetRarityLevel[PetRarity]
end
local function RefreshPetInventory()
	Values.PlayerPetInventory = {}
	Values.PetInventoryDesign = {}
	for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Data.Pet.Inst:GetChildren()) do
		if v:GetAttribute("Locked") then
			local Name = PetName(v:GetAttribute("Type")).." LVL: "..tostring(v:GetAttribute("Level")).."/"..PetMaxLevel(v:GetAttribute("Type")).." ID: "..string.match(v:GetAttribute("Id"), "#%d+")
			table.insert(Values.PetInventoryDesign, Name)
			Values.PlayerPetInventory[Name] = v.Name
		end
	end
end
--start functions
RefreshPetInventory()

for i,v in pairs(require(ResDraw)) do
	if i ~= "__index" then
		if not table.find(CurrentWorldList, v.World) then
			table.insert(CurrentWorldList, v.World)
		end
		local Name = ""
		if string.find(v.World, "W_%d+") then
			if string.find(v.World, "W_0%d+") then
				local gsub = string.gsub(v.World, string.match(v.World, "_0"), "_")
				Name = "World "..string.match(gsub, "%d+")
			else
				Name = "World "..string.match(v.World, "%d+")
			end
		end
		table.insert(WorldHatch2, {["ID"] = v.Id, ["RealName"] = Name, ["Price"] = v.Price, ["Advance"] = v.IsSuper})
	end
end
for i,v in pairs(game:GetService("Workspace").Art:GetChildren()) do
	if string.find(v.Name, "W_%d+") and table.find(CurrentWorldList, v.Name) then
		if string.find(v.Name, "W_0%d+") then
			local name = string.gsub(v.Name, string.match(v.Name, "_0"), "_")
			local newworldname = "World "..string.match(name, "%d+")
			table.insert(WorldHatch, newworldname)
		else
			local newworldname = "World "..string.match(v.Name, "%d+")
			table.insert(WorldHatch, newworldname)
		end
	end
end
table.sort(WorldHatch, function(a,b)
	return a < b
end)
for i,v in pairs(WorldHatch2) do
	print(v.Id, v.Price, v.Advance, v.RealName)
end
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Brave Order | Magenta Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "BraveOrder"})
local AutoTab = Window:MakeTab({Name = "AutoFarm"})
local WeaponTab = Window:MakeTab({Name = "AutoWeapon"})
local PetTab = Window:MakeTab({Name = "AutoPet"})
local MiscTab = Window:MakeTab({Name = "Misc"})

AutoTab:AddSection({Name = "Hit Settings"})
AutoTab:AddToggle({
	Name = "InstaKill All",
	Default = false,
	Callback = function(value)
		Bools.AutoKill = value
	end
})
AutoTab:AddSlider({
	Name = "Max Amount of Hit",
	Min = 1,
	Max = 50,
	Default = 10,
	Color = Color3.fromRGB(133,133,133),
	Increment = 1,
	Callback = function(value)
		Values.HitPerCycle = value
	end
})
AutoTab:AddSection({Name = "Player Settings"})
AutoTab:AddToggle({
	Name = "Semi-Godmode",
	Default = false,
	Callback = function(value)
		Bools.GodMode = value
	end
})
AutoTab:AddToggle({
	Name = "Auto Claim Chests",
	Default = false,
	Callback = function(value)
		while value do wait()
			for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Data.Chest:GetChildren()) do task.wait(0.1)
				local ohTable1 = {["ChestId"] = v.Name}
				Remotes.ChestDrawRE:FireServer(ohTable1)
			end
		end
	end
})
WeaponTab:AddToggle({
	Name = "Auto Level Weapon",
	Default = false,
	Callback = function(value)
		Bools.lvlupW = value
	end
})
WeaponTab:AddToggle({
	Name = "Auto Equip Best Weapon",
	Default = false,
	Callback = function(value)
		Bools.AutoEquipWep = value
		while Bools.AutoEquipWep do task.wait(1)
			Remotes.EquipBestRE:FireServer()
		end
	end
})
PetTab:AddSection({Name = "Hatch Settings"})
PetTab:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(value)
		Bools.AutoHatch = value
	end
})
PetTab:AddToggle({
	Name = "Advance Hatch",
	Default = false,
	Callback = function(value)
		Bools.AdvanceHatch = value
	end	
})
PetTab:AddToggle({
	Name = "3x Hatch (Gamepass)",
	Default = false,
	Callback = function(value)
		Bools.Hatch3xGP = value
	end
})
PetTab:AddToggle({
	Name = "10x Hatch (Gamepass)",
	Default = false,
	Callback = function(value)
		Bools.Hatch10xGP = value
	end
})
PetTab:AddDropdown({
	Name = "World",
	Default = "World 1",
	Options = WorldHatch,
	Callback = function(value)
		Values.CurrentHatching = value
	end
})
PetTab:AddToggle({
	Name = "Auto Equip Best",
	Default = false,
	Callback = function(value)
		Bools.AutoEquipPet = value
		while Bools.AutoEquipPet do task.wait(1)
			Remotes.EquipBestPetRE:FireServer()	
		end		
	end
})
PetTab:AddSection({Name = "Pet Auto Level Settings"})
local StartAutoLevelPet = PetTab:AddToggle({
	Name = "Start Auto Level",
	Default = false,
	Callback = function(value)
		Bools.AutoLevel = value
	end
})
PetTab:AddButton({
	Name = "Show Bot Id in Inventory",
	Callback = function()
		for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenInventory.FrameLeft.PetFrameItem.ScrollingFrame:GetChildren()) do
			v.Button.ATK.Text = string.match(v.Name, "#%d+")
		end
	end
})
local PetDropDown1 = PetTab:AddDropdown({
	Name = "Select Pet",
	Default = "",
	Options = Values.PetInventoryDesign,
	Callback = function(value)
		Values.Pet1 = Values.PlayerPetInventory[value]
	end
})
local PetDropDown2 = PetTab:AddDropdown({
	Name = "Select Pet",
	Default = "",
	Options = Values.PetInventoryDesign,
	Callback = function(value)
		Values.Pet2 = Values.PlayerPetInventory[value]
	end
})
local PetDropDown3 = PetTab:AddDropdown({
	Name = "Select Pet",
	Default = "",
	Options = Values.PetInventoryDesign,
	Callback = function(value)
		Values.Pet3 = Values.PlayerPetInventory[value]
	end
})
local PetDropDown4 = PetTab:AddDropdown({
	Name = "Select Pet",
	Default = "",
	Options = Values.PetInventoryDesign,
	Callback = function(value)
		Values.Pet4 = Values.PlayerPetInventory[value]
	end
})
local PetDropDown5 = PetTab:AddDropdown({
	Name = "Select Pet",
	Default = "",
	Options = Values.PetInventoryDesign,
	Callback = function(value)
		Values.Pet5 = Values.PlayerPetInventory[value]
	end
})
PetTab:AddButton({
	Name = "Update Current Inventory",
	Callback = function()
		if Bools.AutoLevel then
			StartAutoLevelPet:Set(false) 
		end
		PetDropDown1:Refresh(Values.PetInventoryDesign, true)
		PetDropDown2:Refresh(Values.PetInventoryDesign, true)
		PetDropDown3:Refresh(Values.PetInventoryDesign, true)
		PetDropDown4:Refresh(Values.PetInventoryDesign, true)
		PetDropDown5:Refresh(Values.PetInventoryDesign, true)
		wait()
		RefreshPetInventory()
		PetDropDown1:Refresh(Values.PetInventoryDesign, false)
		PetDropDown2:Refresh(Values.PetInventoryDesign, false)
		PetDropDown3:Refresh(Values.PetInventoryDesign, false)
		PetDropDown4:Refresh(Values.PetInventoryDesign, false)
		PetDropDown5:Refresh(Values.PetInventoryDesign, false)
	end
})

MiscTab:AddSection({Name = "SkillPoint Settings"})
MiscTab:AddDropdown({
	Name = "Skills",
	Default = "Attack Power",
	Options = Skp,
	Callback = function(value)
		Values.SPtoIncrease = Skpp[value]
	end
})
local SPSlider = MiscTab:AddSlider({
	Name = "Amount of SP to Use",
	Min = 1,
	Max = 50,
	Default = 1,
	Color = Color3.fromRGB(133,133,133),
	Increment = 1,
	Callback = function(value)
		Values.SPAdd = value
	end
})
MiscTab:AddToggle({
	Name = "Upgrade SkillPoints",
	Default = false,
	Callback = function(value)
		Bools.AutoSP = value
		while Bools.AutoSP do task.wait(1)
		Remotes.AddPointRE:FireServer(Values.SPtoIncrease, Values.SPAdd)
		end
	end
})
MiscTab:AddSection({Name = "Auto-Collect Settings"})
MiscTab:AddToggle({
	Name = "Auto Claim Achievements",
	Default = false,
	Callback = function(value)
		Bools.AutoACHRew = value
		while Bools.AutoACHRew do task.wait(1)
			Remotes.AchievementCompleteAllRE:FireServer()
		end
	end
})
MiscTab:AddToggle({
	Name = "Auto Claim Time Rewards",
	Default = false,
	Callback = function(value)
		Bools.AutoTimeRew = value
		while Bools.AutoTimeRew do task.wait(1)
			for i = 1, 72 do task.wait()
				if i < 10 then
					local ToClaim = "OLT_00"..i
					Remotes.OnlineTimeClaimRF:InvokeServer(ToClaim)
				elseif i >= 10 and i < 100 then
					local ToClaim = "OLT_0"..i
					Remotes.OnlineTimeClaimRF:InvokeServer(ToClaim)
				end
			end
		end
	end
})
MiscTab:AddToggle({
	Name = "Auto Claim Shop Rewards",
	Default = false,
	Callback = function(value)
		Bools.AutoShopRew = value
		while Bools.AutoShopRew do task.wait(10)
			Remotes.StoreBuyRF:InvokeServer("ResourceStore","RS_FreeGem",1)
			Remotes.StoreBuyRF:InvokeServer("ResourceStore","RS_FreeCoin",1)			
		end
	end
})
OrionLib:Init()
--Remove Hatch Animation & Anti AFK Teleport
if not _G.RemovedStuffs then
	game:GetService("Players").LocalPlayer.PlayerGui.ScreenDrawResult:Destroy()
	game:GetService("Workspace").DrawStageRootNew:Destroy()
	game:GetService("Players").LocalPlayer.PlayerScripts.LocalAntiAFK:Destroy()
	_G.RemovedStuffs = true
end

--Hooks
local GodMode; GodMode = hookmetamethod(game, "__namecall", function(self, ...)
	local method = getnamecallmethod()
	if method == "FireServer" and self.Name == "CHitRE" and Bools.GodMode then
		return
	end
	return GodMode(self, ...)
end)

--functions
coroutine.wrap(function()
	while task.wait() do
		if Bools.AutoHatch or Bools.AdvanceHatch then
			local ToHatch = 1
			if Bools.Hatch3xGP then ToHatch = 3 elseif Bools.Hatch10xGP then ToHatch = 10 end
			local DrawPoolId = ""
			local DrawPoolPrice = 0
			for i,v in pairs(WorldHatch2) do
				if v.RealName == Values.CurrentHatching and ((Bools.AdvanceHatch and v.Advance) or (not Bools.AdvanceHatch and not v.Advance)) then
					DrawPoolId = v.ID
					DrawPoolPrice = v.Price
				end
			end		
			if (DrawPoolPrice * ToHatch) <= PlayerData:GetAttribute("SoftCurrency") then
				game:GetService("ReplicatedStorage").DrawPool[DrawPoolId].DrawRE:FireServer(ToHatch, false)
			end
		end
	end
end)()
coroutine.wrap(function()
	while task.wait() do
		if Bools.AutoLevel then
			local ComposeTable = {}
			for i,v in pairs(PlayerData.Pet.Inst:GetChildren()) do
				if not v:GetAttribute("Locked") and not v:GetAttribute("Present") then
					table.insert(ComposeTable, v:GetAttribute("Id"))
				end
			end
			if PlayerData.Pet.Inst:FindFirstChild(Values.Pet1) and PlayerData.Pet.Inst:FindFirstChild(Values.Pet1):GetAttribute("Level") < PetMaxLevel(PlayerData.Pet.Inst:FindFirstChild(Values.Pet1):GetAttribute("Type")) then
				game:GetService("ReplicatedStorage").Remotes.ComposePetRE:FireServer(PlayerData.Pet.Inst:FindFirstChild(Values.Pet1):GetAttribute("Id"), ComposeTable)
			elseif PlayerData.Pet.Inst:FindFirstChild(Values.Pet2) and PlayerData.Pet.Inst:FindFirstChild(Values.Pet2):GetAttribute("Level") < PetMaxLevel(PlayerData.Pet.Inst:FindFirstChild(Values.Pet2):GetAttribute("Type")) then
				game:GetService("ReplicatedStorage").Remotes.ComposePetRE:FireServer(PlayerData.Pet.Inst:FindFirstChild(Values.Pet2):GetAttribute("Id"), ComposeTable)
			elseif PlayerData.Pet.Inst:FindFirstChild(Values.Pet3) and PlayerData.Pet.Inst:FindFirstChild(Values.Pet3):GetAttribute("Level") < PetMaxLevel(PlayerData.Pet.Inst:FindFirstChild(Values.Pet3):GetAttribute("Type")) then
				game:GetService("ReplicatedStorage").Remotes.ComposePetRE:FireServer(PlayerData.Pet.Inst:FindFirstChild(Values.Pet3):GetAttribute("Id"), ComposeTable)
			elseif PlayerData.Pet.Inst:FindFirstChild(Values.Pet4) and PlayerData.Pet.Inst:FindFirstChild(Values.Pet4):GetAttribute("Level") < PetMaxLevel(PlayerData.Pet.Inst:FindFirstChild(Values.Pet4):GetAttribute("Type")) then
				game:GetService("ReplicatedStorage").Remotes.ComposePetRE:FireServer(PlayerData.Pet.Inst:FindFirstChild(Values.Pet4):GetAttribute("Id"), ComposeTable)
			elseif PlayerData.Pet.Inst:FindFirstChild(Values.Pet5) and PlayerData.Pet.Inst:FindFirstChild(Values.Pet5):GetAttribute("Level") < PetMaxLevel(PlayerData.Pet.Inst:FindFirstChild(Values.Pet5):GetAttribute("Type")) then
				game:GetService("ReplicatedStorage").Remotes.ComposePetRE:FireServer(PlayerData.Pet.Inst:FindFirstChild(Values.Pet5):GetAttribute("Id"), ComposeTable)
			end
			PlayerData.Pet.Inst.ChildAdded:wait()
		end
	end
end)()
coroutine.wrap(function()
	while task.wait() do
		if Bools.AutoKill then
			local TargetsTable = {}
			local TargetsTablePet = {}
			for i,v in pairs(game:GetService("Workspace").NPC:GetChildren()) do
				if v:GetAttribute("HP") > 0 and not string.match(v.Name, "Athena") then
					local hits = math.floor(v:GetAttribute("HP") / game.Players.LocalPlayer:GetAttribute("DMG"))
					if hits > Values.HitPerCycle then
						hits = Values.HitPerCycle
					end
					for i = 0, hits, 1 do
						table.insert(TargetsTable, {["FireUID"] = tostring(game.Players.LocalPlayer.UserId)..tostring(game:GetService("ReplicatedStorage").Time.Value),["RepeatIndex"] = 1,["FPName"] = "FirePos",["HitCount"] = 1,["UID"] = v:GetAttribute("UID")})
					end
				end
			end
			local EnemyFound = false
			for i,v in pairs(TargetsTable) do
				EnemyFound = true
			end
			if EnemyFound then
				Remotes.HitRE:FireServer(TargetsTable)
			end
		end
	end
end)()
coroutine.wrap(function()
	while task.wait() do
		if Bools.lvlupW then
			local WeaponToLevel;
			local WeaponTable = {}
			local WeaponSelected = false
			for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Data.Weapon.Inst:GetChildren()) do
				if not Bools.SelectMode and v:GetAttribute("Present") and not WeaponSelected then
					WeaponToLevel = v
					WeaponSelected = true
				end
				if not v:GetAttribute("Locked") and not v:GetAttribute("Present") then
					table.insert(WeaponTable, v:GetAttribute("Id"))
				end
			end
			local TableExist = false
			for i,v in pairs(WeaponTable) do
				TableExist = true
			end
			if TableExist then
				Remotes.ComposeWeaponRE:FireServer(WeaponToLevel:GetAttribute("Id"), WeaponTable)
			end
		end
	end
end)()

local A_1 = 
{
  [1] = getrenv()._G.Pass,
  [2] = "Chatted", 
  [3] = "Loading.......", 
  [4] = Color3.new(1,1,0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(8)
local A_1 = 
{
  [1] = getrenv()._G.Pass,
  [2] = "Chatted", 
  [3] = "Preparing..", 
  [4] = Color3.new(1,1,0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(0)
local A_1 = 
{
  [1] = getrenv()._G.Pass,
  [2] = "Chatted", 
  [3] = "Done", 
  [4] = Color3.new(1,1,0)
}
local Event = game:GetService("ReplicatedStorage").Remotes.Events
Event:FireServer(A_1)
wait(0)

local library = loadstring(game:HttpGet("https://gist.githubusercontent.com/Daserch/1327378235b5bb06bd629b8c965ac6b2/raw/e114b3a54c9dcd7703abf18bf25338be816feb12/V"))()
local venyx = library.new("SadLangHub 3.1                                                  RightControl - Close | Open")

local themes = {
	Background = Color3.fromRGB(242, 242, 242),
	Glow = Color3.fromRGB(255, 0, 0),
	Accent = Color3.fromRGB(1, 4, 1),
	LightContrast = Color3.fromRGB(57, 57, 57),
	DarkContrast = Color3.fromRGB(0, 0, 0),  
	TextColor = Color3.fromRGB(163, 163, 163)
}

local uiPages = {}
local uiSecs = {}
local teleList = {}

local varbs = {}

uiPages.page = venyx:addPage("Ui")
uiPages.page2 = venyx:addPage("Main")
uiPages.page3 = venyx:addPage("Customs")
uiPages.page4 = venyx:addPage("Credits")



uiSecs.ui = uiPages.page:addSection("Graphical Interface")
uiSecs.place = uiPages.page:addSection("Game")
uiSecs.main = uiPages.page2:addSection("Main")
uiSecs.custom = uiPages.page3:addSection("InMenu")
uiSecs.custom2 = uiPages.page3:addSection("TrueChr")
uiSecs.Skull = uiPages.page4:addSection("Credits")

uiSecs.ui:addButton("Destroy Gui", function()
    game.CoreGui["SadLangHub 3.1                                                   RightControl - Close | Open"]:Destroy()
end)

uiSecs.ui:addKeybind("Toggle Keybind", Enum.KeyCode.RightControl, function()
	venyx:toggle()
end, function() end)

uiSecs.place:addButton("Rejoin", function()
    game:GetService("TeleportService"):Teleport(3198259055, LocalPlayer)
end)


uiSecs.main:addToggle("GodMode (NotWork)", false, function(state)

end)

uiSecs.main:addToggle("InfStamina", false, function(state)
    
end)

uiSecs.main:addToggle("InfJump", false, function(state)

end)

uiSecs.main:addToggle("Fly", false, function(state)
    
end)

uiSecs.main:addToggle("NoBarriers(NoClip)", false, function(state)

end)
uiSecs.custom:addButton("LBSans", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/Daserch/b18cb5990734084e718bc0e6497142c7/raw/c7bc96bbe82987ab49c42e185f8dadd48e586445/lbs", true))()
end)

uiSecs.custom:addButton("XGaster", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/Daserch/163347f97e01b9db85dcf660f545fab2/raw/7bf3b31868ef8f9acfd75fe436f7008d1a4e3c99/XGaster"))()
end)

uiSecs.custom2:addButton("True Asriel", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/Daserch/eeb49dd04294b58777c788a4d67027ff/raw/e215a452af9111ec898293b2b81d04959f6c7cba/ts"))()
end)

uiSecs.custom2:addButton("True GTFrisk [2Phase]", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/Daserch/f8c9ef35f5829cd8ec1b3fb25d2bda0c/raw/0f09c71a55202059c6909ec695789a06312e80f2/GTFrisk"))()
end)

uiSecs.Skull:addButton("BySadLangPo | ForSoulShaters")
uiSecs.Skull:addButton("Thx lol")

venyx:SelectPage(venyx.pages[1], true)

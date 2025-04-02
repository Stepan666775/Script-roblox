local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("CheeseScript", "RJTheme3") 
local TabInfo = Window:TabInfo("Инфо") 
local TabPlayer = Window:TabPlayer("Игрок") 
local Section = Tab:TabPlayer("Игрок")
Section:Player("Скорость бега", "увиличивает/Уменьшает скорость бега", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

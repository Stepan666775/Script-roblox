local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("CheeseScript V0.1", "RJTheme3") 

local Tab = Window:NewTab("Инфо")
local Section = Tab:NewSection("Иноформация")
Section:NewLabel("Никнейм:", game.Players.LocalPlayer.Name)

local Tab = Window:NewTab("Игрок")
local Section = Tab:NewSection("Гуманойд")

Section:NewSlider("Скорость бега", "Увиличивает/Уменьшает скорость бега", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("Сила прыжка", "увиличивает/Уменьшает силу прыжка", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

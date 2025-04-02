-- local Name = game.Players.LocalPlayer.Character.Name

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("CheeseScript V0.1", "RJTheme3") 

local Tab = Window:NewTab("Инфо")
local Section = Tab:NewSection("ИНФОРМАЦИЯ")

Section:NewLabel("Создатель: Сыр") 

local Tab = Window:NewTab("Игрок")
local Section = Tab:NewSection("ГУМАНОЙД")

Section:NewSlider("Скорость бега", "Увиличивает/Уменьшает скорость бега", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("Сила прыжка", "увиличивает/Уменьшает силу прыжка", 500, 0, function(j) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = j
end)

local Tab = Window:NewTab("Другое")
local Section = Tab:NewSection("SUS")

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        local Part = script.Parent
        -- Создаем парт
        local newPart = Instance.new("Part")
        newPart.Size = Vector3.new(5, 1, 1)
        newPart.BrickColor = BrickColor.new("light orange")
        newPart.Anchored = false -- Не закрепляем, так как он будет привязан
        newPart.Parent = game.Workspace

        -- Получаем игрока и его персонажа
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        -- Создаем WeldConstraint для привязки
        local weld = Instance.new("WeldConstraint")
        weld.Part0 = humanoidRootPart -- К чему привязываем (игрок)
        weld.Part1 = newPart -- Что привязываем (парт)
        weld.Parent = newPart

        -- Устанавливаем начальное смещение
        newPart.Position = humanoidRootPart.Position 
        newPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 5, 0)
    else
        newPart.Parent = nil
    end
end)


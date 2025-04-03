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

Section:NewToggle("Палка", "Создаёт палку", function(state)
    if state then
        local RunService = game:GetService("RunService")

-- Создаем парт
        local newPart = Instance.new("Part")
        newPart.Size = Vector3.new(1, 1, 5)
        newPart.BrickColor = BrickColor.new("Bright orange")
        newPart.Anchored = true
        newPart.Parent = game.Workspace
        newPart.CanCollide = false

-- Получаем игрока и его персонажа
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Функция для обновления позиции и вращения
            local function updatePartPositionAndRotation()
    -- Смещаем парт: 5 вверх, 3 вперед
            newPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, -1.5, -2.5)
        end

-- Подключаем обновление к каждому кадру
        RunService.RenderStepped:Connect(updatePartPositionAndRotation) 
    else
        newPart:Destroy()
        connection:Disconnect() -- Отключаем цикл обновления
    end
end)
Section:NewButton("Скример", "Вызывает скример (локал)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TheqopThe/robax/refs/heads/main/jumpscare.lua"))()
end)

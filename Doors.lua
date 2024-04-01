local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Write a note", "Ocean")
local RunService = game:GetService("RunService")

-- OTHER
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

local isBypassedFlyEnabled = false
local bypassedFlyFunction

OtherSection:NewButton("Bypassed Fly", "Bathroom doors", function()
    isBypassedFlyEnabled = not isBypassedFlyEnabled

    if isBypassedFlyEnabled then
        bypassedFlyFunction = function()
            fireclickdetector(workspace.Interactables:GetChildren()[10].Click.ClickDetector)
            wait(0.1)
            fireclickdetector(workspace.Interactables.Shower.Door.ClickDetector)
            wait(0.1)
            fireclickdetector(workspace.Interactables.Toilet.Lid.ClickDetector)
            wait(0.1)
            fireclickdetector(workspace.Interactables:GetChildren()[9].Click.ClickDetector)
            wait(0.1)
            fireclickdetector(workspace.Interactables:GetChildren()[8].Click.ClickDetector)
            wait(0.1)
            fireclickdetector(workspace.Interactables:GetChildren()[16].Click.ClickDetector)
            wait(0.1)
            fireclickdetector(workspace.Interactables.Closet.RightDoor.Main.ClickDetector)
            wait(0.1)
            fireclickdetector(workspace.Interactables.Door.Click.ClickDetector)
            wait(0.1)
            fireclickdetector(workspace.Interactables.BlackroomDoor.Door.Click.ClickDetector)
        end

        RunService:BindToRenderStep("BypassedFly", Enum.RenderPriority.Last.Value, bypassedFlyFunction)
    else
        if bypassedFlyFunction then
            RunService:UnbindFromRenderStep("BypassedFly")
            bypassedFlyFunction = nil
        end
    end
end)

local isAnotherButtonEnabled = false
local anotherButtonFunction

OtherSection:NewButton("Another Button", "Another set of doors", function()
    isAnotherButtonEnabled = not isAnotherButtonEnabled

    if isAnotherButtonEnabled then
        anotherButtonFunction = function()
            fireclickdetector(workspace.Interactables:GetChildren()[16].Click.ClickDetector)
            wait(0.1)
            fireclickdetector(workspace.Interactables.Closet.RightDoor.Main.ClickDetector)
            wait(0.1)
            fireclickdetector(workspace.Interactables.Door.Click.ClickDetector)
            wait(0.1)
            fireclickdetector(workspace.Interactables.BlackroomDoor.Door.Click.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables.Fridge.LeftDoor.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables.Fridge.RightDoor.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables.Fridge.BottomDoor.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables.Stove.OvenDoor.Clicker.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables.Closet.LeftDoor.Main.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables.Toilet.Handle.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables.Bathtub.ColdHandle.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables.Bathtub.HotHandle.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables:GetChildren()[11].ColdHandle.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables.Stove.Button2.Main.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables.Stove.Button1.Main.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables.Stove.Button3.Main.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables.Stove.Button4.Main.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables.SinkTap.HotHandle.ClickDetector)
wait(0.1)
fireclickdetector(workspace.Interactables.Shower.HotHandle.ClickDetector)
        end

        RunService:BindToRenderStep("AnotherButton", Enum.RenderPriority.Last.Value, anotherButtonFunction)
    else
        if anotherButtonFunction then
            RunService:UnbindFromRenderStep("AnotherButton")
            anotherButtonFunction = nil
        end
    end
end)
-- ...

-- ADDITIONAL
local Additional = Window:NewTab("Additional") -- Add a new tab
local AdditionalSection = Additional:NewSection("Extra Actions") -- Add a new section under the tab

-- Add your buttons or functionality under the new tab and section
-- For example:
AdditionalSection:NewButton("New Action", "Description of the new action", function()
    -- Add your logic here
    print("New action button clicked!")
end)

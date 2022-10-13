getgenv().kill = false -- set to true to start the loop kill, false to stop
local target = "" --put target name here in exact capitalization

while kill and wait(.01) do --u can set wait(.01) to wait() if u want
    pcall(function()
    
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[target].Character.HumanoidRootPart.CFrame * CFrame.new(0, -1,0)
        game.ReplicatedStorage.SuperPunch:FireServer("SuperPunch")
        game.ReplicatedStorage.AttemptStomp:FireServer(game.Workspace[target])
    end)
end

local teleport = game.ReplicatedStorage:WaitForChild("Teleportplayer") --Assigns a variable to the Remote Event in the Replicated Storage

script.Parent.MouseButton1Click:Connect(function() --Runs code when the button is clicked
 task.wait(1) --Wait 1 second
 teleport:FireServer() --Fire the Remote Event to the server
end) --End function

local teleport = game.ReplicatedStorage:WaitForChild("Teleportplayer") ----Assigns a variable to the Remote Event in the Replicated Storage
local teleportservice = game:GetService("TeleportService") --Gets the teleport service in Roblox
local placeId = 6651677874 --Game Id, replace 6651677874 with your game Id
local players = game:GetService("Players") --Gets the players in the game
local player = players:GetPlayers()[1] --Gets the first player

teleport.OnServerEvent:Connect(function(player) --Code runs when the Remote Event is fired
 teleportservice:TeleportAsync(placeId,{player}) --Teleports player to other game
end) --End function

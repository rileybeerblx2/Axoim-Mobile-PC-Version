-- Put this on top of script
local SlayerzUI_MobileToggle = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/SlayerzUI/main/MBToggle.script"))()
SlayerzUI_MobileToggle:Create("rbxassetid://15110884615") -- Image Id

local SlayerzLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/SlayerzUI/main/BetaLibrary.script"))()

local Name = "Axoim Mobile Version" -- Name Hub
local Description = "Developed By Riley And wuhaz" -- Description in script
local Image = "rbxassetid://15110884615" -- Image Id
local Color = Color3.fromRGB(255, 0, 0) -- Color in UI
local Window = SlayerzLibrary:Window(Name,Description,Image,Color) -- Create Window

local Tab1 = Window:Tab("Home") -- Tab Name
local Tab2 = Window:Tab("Visuals") -- Tab Name

local Section = Tab1:Section("- Section 1 -","Left") -- Section on Left
local Section2 = Tab1:Section("- Section 2 -","Right") -- Section on Right
local Section3 = Tab2:Section("- Section 3 -","Left") -- Section on Left
local Section4 = Tab2:Section("- Section 4 -","Right") -- Section on Right

-- Section 1

Section:Label("Home")

Section:Button("Inf Jump",function()
   local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
end)

Section:Button("Fly GUI V3",function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)

-- Section 2

Section2:Label("Visuals / ESP")

-- Text , Callback
Section:Button("Character ESP",function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
end)

-- Text , Callback
Section:Button("Line ESP",function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/wuhaz/scripts/main/as", true))()
end)

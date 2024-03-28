local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Axoim Mobile / PC Version" .. Fluent.Version,
    SubTitle = "Developed By Riley And wuhaz",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Home", Icon = "home" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do

Fluent:Notify({
        Title = "Axoim Mobile / PC Version",
        Content = "Welcome To Axoim Powered By Riley Orion",
        SubContent = "SubContent", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })

Tabs.Main:AddButton({
        Title = "Inf Jump",
        Description = "Makes Your Character Jump In A Infinite Times",
        Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/rileybeerblx2/godmode-lua/main/Infjump.lua", true))()
            Window:Dialog({
                Title = "Inf Jump Has Been Loaded",
                Content = "Success",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

Tabs.Main:AddButton({
        Title = "Fly GUI V3",
        Description = "A Fly GUI V3 Made By me_ozone",
        Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
            Window:Dialog({
                Title = "Fly GUI V3 Has Been Loaded",
                Content = "Success",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

Tabs.Main:AddButton({
        Title = "Character ESP",
        Description = "Character ESP A ESP That Can Show Players By Their Username And Highlight",
        Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
            Window:Dialog({
                Title = "Character ESP",
                Content = "Success",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

Tabs.Main:AddButton({
        Title = "Line ESP",
        Description = "A Line ESP Is A Tracer To Find Players With Other ESP On",
        Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wuhaz/scripts/main/as", true))()
            Window:Dialog({
                Title = "Line ESP Loaded",
                Content = "Success",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

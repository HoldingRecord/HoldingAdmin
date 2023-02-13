repeat task.wait() until game:IsLoaded()
game:GetService("Lighting").TimeOfDay = 0
loadstring(game:HttpGet("https://raw.githubusercontent.com/HoldingRecord/HoldingAdmin/main/LeaderBoard.lua",true))()
task.wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/HoldingRecord/HoldingAdmin/main/ChatBubble.lua",true))()
task.wait()
loadstring(game:HttpGet("https://raw.githubusercontent.com/HoldingRecord/HoldingAdmin/main/Admin.lua",true))()

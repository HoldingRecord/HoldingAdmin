local Player = game.Players.LocalPlayer
local PlayerGui = Player:FindFirstChild("PlayerGui")
local BubbleChatUI = PlayerGui:WaitForChild("BubbleChat")
BubbleChatUI.DescendantAdded:Connect(function(child)
    if child:IsA("ImageLabel") then
        child.ImageColor3 = Color3.fromRGB(59, 59, 59)
    elseif child:IsA("TextLabel") then
        child.TextColor3 = Color3.new(1,1,1)
    end
end)

local Divider = function()
    return game:GetService("CoreGui").PlayerList.PlayerListMaster.OffsetFrame.PlayerScrollList.SizeOffsetFrame.TitleBar
end

local Rainbow = function()
    for i,v in pairs(game.Players:GetPlayers()) do
        game:GetService("CoreGui").PlayerList.PlayerListMaster.OffsetFrame.PlayerScrollList.SizeOffsetFrame.ScrollingFrameContainer.ScrollingFrameClippingFrame.ScollingFrame.OffsetUndoFrame["p_" .. v.UserId].ChildrenFrame["GameStat_Coins"].OverlayFrame.StatText.Visible = false
        game:GetService("CoreGui").PlayerList.PlayerListMaster.OffsetFrame.PlayerScrollList.SizeOffsetFrame.ScrollingFrameContainer.ScrollingFrameClippingFrame.ScollingFrame.OffsetUndoFrame["p_" .. v.UserId].ChildrenFrame.NameFrame.BGFrame.OverlayFrame.PlayerIcon.Visible = false
        local Text = game:GetService("CoreGui").PlayerList.PlayerListMaster.OffsetFrame.PlayerScrollList.SizeOffsetFrame.ScrollingFrameContainer.ScrollingFrameClippingFrame.ScollingFrame.OffsetUndoFrame["p_" .. v.UserId].ChildrenFrame.NameFrame.BGFrame.OverlayFrame.PlayerName.PlayerName
        coroutine.wrap(function()
            while task.wait() do
                Text.TextColor3 = Color3.fromHSV(tick() % 1 / 1, 1, 1)
            end
        end)()
    end
end
pcall(function()
    Rainbow()
    Divider().Visible = false
end)

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Wait()
    Rainbow()
    Divider().Visible = false
end)
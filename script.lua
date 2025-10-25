_G.one_shot_mod = true

local function edit_attributes()
    while _G.one_shot_mod do
        for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") then
                v:SetAttribute("AutoFire", true)
                v:SetAttribute("FireRate", 0)
                v:SetAttribute("Range", 999999999)
                v:SetAttribute("Spread", 999999999)
            end
        end
        wait(0.5)
    end
end

while true do
    edit_attributes()
    wait()
end

local CTT = CreateFrame("Frame")
CTT:SetParent(TargetFrame)
CTT:SetPoint("CENTER", 105, 10)
CTT:SetWidth(30)
CTT:SetHeight(30)
CTT.t = CTT:CreateTexture(nil,BORDER)
CTT.t:SetAllPoints()
CTT.t:SetTexture("Interface\\Icons\\ABILITY_DUALWIELD")

local function FrameOnUpdate(self) if UnitAffectingCombat("target") then self:Show() else self:Hide() end end
local g = CreateFrame("Frame")
g:SetScript("OnUpdate", function(self) FrameOnUpdate(CTT) end)
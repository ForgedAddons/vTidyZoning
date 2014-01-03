local event = CreateFrame("Frame")
event:SetScript("OnEvent", function(self, event, ...) self[event](self, event, ...) end)
event:RegisterEvent"ZONE_CHANGED_NEW_AREA"

event.ZONE_CHANGED_NEW_AREA = function(self, event, ...)
	local newtime = time();
	local elapsed = difftime(newtime,lastcycle);
	if elapsed > 300 then
		collectgarbage();
		lastcycle = newtime;
	end
end
local addon, ns = ...

local lastcycle = 0;

ns.RegisterEvent("ZONE_CHANGED_NEW_AREA", function()
	local newtime = time();
	local elapsed = difftime(newtime,lastcycle);
	if elapsed > 300 then
		collectgarbage();
		lastcycle = newtime;
	end
end)
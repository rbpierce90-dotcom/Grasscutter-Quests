local _delay = 10

function OnClientExecuteReq(context, param1, param2, param3)
	if param1 == 0 then
		ScriptLib.SetGadgetState(context, GadgetState.Default)
	elseif param1 == 201 then
		ScriptLib.SetGadgetState(context, GadgetState.GearStart)
	end
end

function OnTimer(context, now)
	local state = ScriptLib.GetGadgetState(context)
	if state ~= GadgetState.Default then
		local state_begin_time = ScriptLib.GetGadgetStateBeginTime(context)
		if now >= state_begin_time + _delay then
			ScriptLib.SetGadgetState(context, GadgetState.Default)
		end
	end
end

function OnBeHurt(context, element_type, strike_type, is_host)
	local state = ScriptLib.GetGadgetState(context)
	if element_type == ElementType.Fire and state == GadgetState.Default then
		ScriptLib.SetGadgetState(context, GadgetState.GearStart)
	end
end
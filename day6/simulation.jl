function step(state)
	new_state = Int64[]
	for fish ∈ state
		if fish > 0 
			push!(new_state, fish-1)
		elseif fish == 0
			push!(new_state, 6)
			push!(new_state, 8)
		end
	end
	return new_state
end

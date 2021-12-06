function initialize_state(array)
	state = Dict{Int64,Int64}()
	for internal_counter ∈ array
		state[internal_counter] = get(state, internal_counter, 0) + 1
	end
	return state
end


function step(state)
	new_state = Dict{Int64,Int64}()
	for (internal_counter, fish_count) ∈ state
		if internal_counter > 0 
			new_state[internal_counter - 1] = get(new_state, internal_counter - 1, 0) + fish_count
		elseif internal_counter == 0
			new_state[6] = get(new_state, 6, 0) + fish_count
			new_state[8] = get(new_state, 8, 0) + fish_count
		end
	end
	return new_state
end

include("simulation.jl");

io_file = open("input.txt", "r");
initial_state = (str -> parse(Int64, str)).(split(read(io_file, String), ","));
current_state = initialize_state(initial_state)

for day ∈ 1:256
	global current_state = step(current_state);
end

println(sum(values(current_state)))

include("simulation.jl");

io_file = open("input.txt", "r");
initial_state = (str -> parse(Int64, str)).(split(read(io_file, String), ","));
current_state = deepcopy(initial_state)

for day ∈ 1:80
	global current_state = step(current_state);
end

println(length(current_state))

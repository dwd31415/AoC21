include("lines.jl");

pattern = r"(\d+),(\d+) -> (\d+),(\d+)";
io_file = open("input.txt", "r");
lines = split(read(io_file, String), "\n");

admissable_lines = Line[] 

for line ∈ lines
	 pattern_match = match(pattern, line)
	 if !isnothing(pattern_match)
		x1,y1,x2,y2 = (str -> parse(Int64, str)).(pattern_match.captures) 
		push!(admissable_lines, Line(x1,x2,y1,y2))
	 end
end

grid = trace_lines(admissable_lines)
println(sum(grid .>= 2))

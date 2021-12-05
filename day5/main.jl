pattern = r"(\d+),(\d+) -> (\d+),(\d+)";
file_io = open("input.txt", "r");
lines = split(read(io_file, String), "\n");

for line ∈ lines
	 pattern_match = match(pattern, line)
	 if !isnothing(pattern_match)
		x1,y1,x2,y2 = (str -> parse(Int64, str)).(pattern_match.captures) 
		
	 end
end

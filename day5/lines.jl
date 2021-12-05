struct Line 
	x1 :: Integer
	x2 :: Integer 
	y1 :: Integer
	y2 :: Integer
end

get_x1(l::Line) = l.x1
get_x2(l::Line) = l.x2
get_y1(l::Line) = l.y1
get_y2(l::Line) = l.y2

function trace_lines(lines::Vector{Line})
	grid_width = 1+maximum([get_x1.(lines); get_x2.(lines)])
	grid_height = 1+maximum([get_y1.(lines); get_y2.(lines)])
	grid = zeros(grid_width, grid_height);
	for line in lines 
	   if line.x1 == line.x2
	   	start  = min(line.y1,line.y2)
	   	finish = max(line.y1,line.y2)
		for y ∈ start : finish
			grid[1+line.x1,1+y] += 1
	      	end
	   end
	   if line.y1 == line.y2
	   	start  = min(line.x1,line.x2)
	   	finish = max(line.x1,line.x2)
		for x ∈ start : finish 
			grid[1+x,1+line.y1] += 1
		end
	   end
	end
	grid
end

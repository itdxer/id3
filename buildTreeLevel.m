function level_lines = buildTreeLevel(count)

	level_lines = '';

	for i = 1:count
		level_lines = strcat('--', level_lines);
	end;

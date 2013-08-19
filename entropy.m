function Ip = entropy(data, column_number)
	% @data - all data
	% @column_number - number of column
	
	[rows, cols] = size(data);
	if rows == 0
		Ip = 0
	else
		unique_col_data = unique(data(:, column_number));

		Ip = 0;
		for j = 1:length(unique_col_data)
			pn = length(find(data(:, column_number) == unique_col_data(j))) / rows;
			Ip = Ip - pn * log2(pn);
		end;
	end;

end;
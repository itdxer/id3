function InfoT = Gain(data, column_number_attr, column_number)
	% @data - all data
	% @column_number_attr - column number
	% @column_number - number of column

	unique_col_data = unique(data(:, column_number_attr));
	[rows, cols] = size(data);
	
	InfoXT = 0;
	for i = 1:length(unique_col_data)
		find_data = find(data(:, column_number_attr) == unique_col_data(i));
		attr_data = data(find_data, :);
		InfoXT = InfoXT + (length(find_data) / rows) * entropy(attr_data, column_number);
	end;

	InfoT = entropy(data, column_number) - InfoXT;
end
function [tree, counter] = treeBuild(data, cols_attr, counter, level, tree = [])
	% @data - matrix with data
	% @cols_attr - string array with columns and colums unique parameters names
	% @counter - integer value with a last value in tree
	% @level - save level number of tree
	% @tree - save tree recurtion arguments
	counter = counter + 1;
	
	[rows, cols] = size(data);

	tree_gains = [];
	for i = 1:cols - 1 % get Gain params
		tree_gain(i, 1) = i; % column number
		tree_gain(i, 2) = Gain(data, i, cols); % Gain coefficient
	end;
	
	max_gain = tree_gain(find(max(tree_gain(:, 2)) == tree_gain(:,2)), :); % Find maximum Gain value in get results

	for k = 2:length(cols_attr(max_gain(1), :, :))
		if !isempty(cell2mat(cols_attr(max_gain(1), k, 1)))
			disp(cell2mat(strcat(buildTreeLevel(level), cols_attr(max_gain(1), k, 1))));

			this_data = data(find(data(:, max_gain(1)) == cell2mat(cols_attr(max_gain(1), k, 2))), :); % get data for this node
			
			[rows, cols] = size(this_data); % get new data matrix size
			this_data = this_data(:, max_gain(1) + 1:cols); % get all columns in @this_data after @max_gain column
			this_cols_attr = cols_attr(max_gain(1) + 1:cols, :, :); % get all columns in @cols_attr after @max_gain column
			[rows, cols] = size(this_data); % get new data matrix size after shortcut parameter @this_data

			if entropy(this_data(:, cols), 1) == 0
				counter = counter + 1;
				
				if this_data(:, cols)(1) == 1
					disp(strcat(buildTreeLevel(level + 1), ' Success'))
				elseif this_data(:, cols)(1) == 0
					disp(strcat(buildTreeLevel(level + 1), ' Failer'))
				end;
				counter = counter + 1;
			else
				[tree, counter] = treeBuild(this_data, this_cols_attr, counter, level + 1, tree);
			end;
		end;
	end;
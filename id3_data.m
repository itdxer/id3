clc
load data.dat;

disp('Clients');
cols_attr(1, 1, 1) = {'Client age'};
cols_attr(1, 2, 1) = {' Young'};
cols_attr(1, 2, 2) = {1};
cols_attr(1, 3, 1) = {' Mean'};
cols_attr(1, 3, 2) = {2};
cols_attr(1, 4, 1) = {' Old'};
cols_attr(1, 4, 2) = {3};

cols_attr(2, 1, 1) = {'Income'};
cols_attr(2, 2, 1) = {' Small'};
cols_attr(2, 2, 2) = {1};
cols_attr(2, 3, 1) = {' Normal'};
cols_attr(2, 3, 2) = {2};
cols_attr(2, 4, 1) = {' Big'};
cols_attr(2, 4, 2) = {3};

cols_attr(3, 1, 1) = {'Student?'};
cols_attr(3, 2, 1) = {' Not student'};
cols_attr(3, 2, 2) = {0};
cols_attr(3, 3, 1) = {' Student'};
cols_attr(3, 3, 2) = {1};

cols_attr(4, 1, 1) = {'Credit'};
cols_attr(4, 2, 1) = {' Good'};
cols_attr(4, 2, 2) = {1};
cols_attr(4, 3, 1) = {' Very good'};
cols_attr(4, 3, 2) = {2};

cols_attr(5, 1, 1) = {'Is buy computer?'};
cols_attr(5, 2, 1) = {' No'};
cols_attr(5, 2, 2) = {0};
cols_attr(5, 3, 1) = {' Yes'};
cols_attr(5, 3, 2) = {1};

[tree, counter] = treeBuild(data, cols_attr, 0, 1);
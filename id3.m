clc
load data2.dat;

disp('All Movies');
cols_attrs(1, 1, 1) = {'Country'};
cols_attrs(1, 2, 1) = {' USA'};
cols_attrs(1, 2, 2) = {1};
cols_attrs(1, 3, 1) = {' Europe'};
cols_attrs(1, 3, 2) = {2};
cols_attrs(1, 4, 1) = {' Rest of world'};
cols_attrs(1, 4, 2) = {3};

cols_attrs(2, 1, 1) = {'Big Star'};
cols_attrs(2, 2, 1) = {' Star'};
cols_attrs(2, 2, 2) = {1};
cols_attrs(2, 3, 1) = {' No Star'};
cols_attrs(2, 3, 2) = {0};

cols_attrs(3, 1, 1) = {'Genre'};
cols_attrs(3, 2, 1) = {' Sciense Fiction'};
cols_attrs(3, 2, 2) = {1};
cols_attrs(3, 3, 1) = {' Comedy'};
cols_attrs(3, 3, 2) = {2};
cols_attrs(3, 4, 1) = {' Romance'};
cols_attrs(3, 4, 2) = {3};

cols_attrs(4, 1, 1) = {'Success'};
cols_attrs(4, 2, 1) = {' Failer'};
cols_attrs(4, 2, 2) = {0};
cols_attrs(4, 3, 1) = {' Success'};
cols_attrs(4, 3, 2) = {1};

[tree, counter] = treeBuild(data2, cols_attrs, 0, 1);

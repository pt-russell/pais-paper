f = fopen('trace_X_l_1', 'r');
X = fread(f, [3 inf], 'double')';
fclose(f);
f = fopen('trace_w_l_1', 'r');
w = fread(f, [1 inf], 'double')';
fclose(f);
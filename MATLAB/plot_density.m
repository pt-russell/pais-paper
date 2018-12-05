x = -10:1e-1:10;
y = x;
[X,Y] = meshgrid(x,y);
Z = 0*X;
for i=1:numel(x)
for j=1:numel(y)
Z(i,j) = density([X(i,j);Y(i,j)]);
end
end
pcolor(X,Y,Z);
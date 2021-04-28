[x,y] = meshgrid(-5:.5:5,-4:.5:4);
z = x.^2+y.^2;
mesh(x,y,z)
colormap hsv
title('\itf(x,y) = x.^2+y.^2')
xlabel('X')
ylabel('Y')
zlabel('Z')
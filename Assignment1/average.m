function [avg] = average(source_img)
[rows, cols] = size(source_img);

no_of_pixels = rows * cols;
sum = 0;
for i = 1:rows
    for j = 1:cols
        sum = sum + source_img(i,j);
    end
end

avg = sum / no_of_pixels;

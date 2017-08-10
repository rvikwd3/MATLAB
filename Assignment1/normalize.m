function [output_img] = average(source_img)
[rows, cols] = size(source_img);

no_of_pixels = rows * cols;
for i = 1:rows
    for j = 1:cols
        sum = source_img(i,j)
    end
end

average = sum / no_of_pixels;

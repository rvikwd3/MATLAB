function [avg] = img_avg(source_img)
[rows, cols] = size(source_img);

no_of_pixels = rows * cols
uint32 pixel_sum;
pixel_sum = 0;
for i = 1:rows
    for j = 1:cols
        pixel_sum = pixel_sum + uint32(source_img(i,j));
    end
end

avg = pixel_sum / no_of_pixels;

function [output_img] = nbh_average(input_img, nbh_size)

[rows, cols] = size(input_img);
output_img = zeros(rows,cols);

uint32 nbh_sum;
nbh_sum = 0;
pixels = 0;

if(mod(nbh_size, 2) ~= 0)
    nbh_left = floor(nbh_size/2);
    nbh_right = floor(nbh_size/2);
else
    nbh_left = floor(nbh_size/2);
    nbh_right = floor(nbh_size/2) - 1;
end

for row = 1:rows
    for col = 1:cols
        
        pixels = 0;
        nbh_sum = 0;
        
        for i = (row - nbh_left):(row + nbh_right)
            for j = (col - nbh_left):(col + nbh_right)
                
                if(i > 0 && j > 0 && i <= rows && j <= cols)
                    nbh_sum = nbh_sum + uint32(input_img(i,j));
                    pixels = pixels + 1;
                end
            end
        end
        
        if(nbh_sum ~= 0)
            output_img(row,col) = nbh_sum / pixels;
        else
            output_img(row,col) = 0;
        end
        
    end
end

imshow(output_img, []);
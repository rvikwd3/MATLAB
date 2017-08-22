function [output_values] = generateHistogram(source_img)
[rows,cols] = size(source_img);

output_values = zeros(1,256);
for row = 1:rows
    for col = 1:cols
        output_values(source_img(row,col) + 1) = output_values(source_img(row,col)+ 1) + 1;
    end
end
function [output_img] = gate(source_img, threshold)
[rows,cols] = size(source_img);

for i = 1:rows
    for j = 1:cols
        if source_img(i,j) >= threshold
            output_img(i,j) = 1;
        else
            output_img(i,j) = 0;
        end
    end
end
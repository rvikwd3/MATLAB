function [normalized_img] = equalizeImage(source_img)
[rows,cols] = size(source_img);

freq = zeros(1,256);

for row = 1:rows
    for col = 1:cols
        freq(source_img(row,col) + 1) = freq(source_img(row,col) + 1) + 1;
    end
end

cdf = zeros(1,256);

cdf(1) = freq(1);
for i = 2:256
    cdf(i) = freq(i) + cdf(i-1);
end

min_cdf = unique(cdf);
min_cdf = min_cdf(2);

normal = zeros(1,256);
for v = 1:256
    if( cdf(v) > 0 )
        normal(v) = floor(  ((cdf(v) - min_cdf) / ((rows * cols) - 1)) ...
                            * ...
                            255);
    end
end

for row = 1:rows
    for col = 1:cols
        normalized_img(row,col) = normal( source_img(row,col));
    end
end
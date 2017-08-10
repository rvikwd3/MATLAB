function [output_img] = Negative(source_img)

grayscale_img = rgb2gray(source_img)
[rows,cols] = size(grayscale_img)

% for i = 1:rows
%     for j = 1:cols
%         output_img(i,j) = 255 - grayscale_img(i,j);
%     end
% end

output_img(:,:) = 255 - grayscale_img(:,:)

imshow(grayscale_img);
figure;
imshow(output_img);

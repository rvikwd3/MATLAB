function [output_img] = horizontal_flip(source_img)
% source_img = [255,0,0; 4,5,6; 7,8,9]
[rows,cols]= size(source_img);
    
    i = rows;
    while i > 0
        output_img(i,:,1) = flip(source_img(i,:,1));
        output_img(i,:,2) = flip(source_img(i,:,2));
        output_img(i,:,3) = flip(source_img(i,:,3));
        i = i - 1;
    end
    
    figure;
    imshow(output_img(:,:,1));
    figure;
    imshow(output_img(:,:,2));
    figure;
    imshow(output_img(:,:,3));
    figure;
    imshow(output_img);
end
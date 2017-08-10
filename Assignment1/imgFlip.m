function [flipped_img] = imgFlip(source_img, flip_flag)
if(flip_flag == 0)
    flipped_img = horizontal_flip(source_img)
else
    flipped_img = vertical_flip(source_img)
end

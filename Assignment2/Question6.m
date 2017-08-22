source_img = imread('/home/ravi/Code/Sem7/MATLAB/Lenna.png');
source_img = rgb2gray(source_img);

averaged_img = nbh_average(source_img, 20);

imshowpair(source_img, averaged_img, 'montage');
% imshow(averaged_img
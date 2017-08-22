source_img = imread('/home/ravi/Code/Sem7/MATLAB/button_pause.png');
bw_img = rgb2gray(source_img);

rotate_90 = imrotate(bw_img, 90);
rotate_45 = imrotate(bw_img, 45);

rotate_90_bilinear = imrotate(bw_img, 90, 'bilinear');
rotate_90_bicubic = imrotate(bw_img, 90, 'bicubic');

rotate_45_bilinear = imrotate(bw_img, 45, 'bilinear');
rotate_45_bicubic = imrotate(bw_img, 45, 'bicubic');

subplot(2,3,1)
imshow(rotate_45);
title('45 Rotation')

subplot(2,3,2)
imshow(rotate_45_bilinear);
title('45 Bilinear')

subplot(2,3,3)
imshow(rotate_45_bicubic);
title('45 Bicubic')

subplot(2,3,4)
imshow(rotate_90);
title('90 Rotation')

subplot(2,3,5)
imshow(rotate_90_bilinear);
title('90 Bilinear')

subplot(2,3,6)
imshow(rotate_90_bicubic);
title('90 Bicubic')
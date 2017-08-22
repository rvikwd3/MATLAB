source_img_1 = imread('/home/ravi/Code/Sem7/MATLAB/Assignment2/Fig1.tif');
source_img_2 = imread('/home/ravi/Code/Sem7/MATLAB/Assignment2/Fig2.tif');
source_img_3 = imread('/home/ravi/Code/Sem7/MATLAB/Assignment2/Fig3.tif');

subplot(4,3,1)
imshow(source_img_1);
title('Original');

subplot(4,3,2)
imhist(source_img_1);
title('Original Histogram');

equalized_img = equalizeImage(source_img);

subplot(4,3,4)
imshow(equalized_img, 'DisplayRange', []);
title('Equalized 1');

subplot(4,3,5)
histogram(equalized_img);
title('Equalized 1 Histogram');

subplot(4,3,7)
imshow(equalizeImage(source_img_2), 'DisplayRange', []);
title('Equalized 2');

subplot(4,3,8)
histogram(equalizeImage(source_img_2));
title('Equalized Histogram 2');

subplot(4,3,10)
imshow(equalizeImage(source_img_3), 'DisplayRange', []);
title('Equalized 3');

subplot(4,3,11)
histogram(equalizeImage(source_img_3));
title('Equalized Histogram 3');

subplot(4,3,6)
imshowpair(equalizeImage(source_img_1), histeq(source_img_1), 'montage');
title('Comparision 1')

subplot(4,3,9)
imshowpair(equalizeImage(source_img_2), histeq(source_img_2), 'montage');
title('Comparision 2')

subplot(4,3,12)
imshowpair(equalizeImage(source_img_3), histeq(source_img_3), 'montage');
title('Comparision 3')
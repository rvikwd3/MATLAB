source_img_1 = imread('/home/ravi/Code/Sem7/MATLAB/Assignment2/Fig1.tif');
source_img_2 = imread('/home/ravi/Code/Sem7/MATLAB/Assignment2/Fig2.tif');
source_img_3 = imread('/home/ravi/Code/Sem7/MATLAB/Assignment2/Fig3.tif');

hist_val_1 = generateHistogram(source_img_1);
hist_val_2 = generateHistogram(source_img_2);
hist_val_3 = generateHistogram(source_img_3);

subplot(3,1,1)
histogram_1 = stem(1:256,hist_val_1);
% histogram_1.BinWidth = 1;
histogram_1;
title('Image 1')

subplot(3,1,2)
histogram_2 = stem(1:256,hist_val_2);
histogram_2;
title('Image 2')

subplot(3,1,3)
histogram_3 = stem(1:256,hist_val_3);
histogram_3;
title('Image 3')
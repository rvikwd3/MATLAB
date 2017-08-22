source_img = imread('/home/ravi/Code/Sem7/MATLAB/Lenna.png');
bw_img = rgb2gray(source_img);

noise_1 = imnoise(bw_img, 'salt & pepper', 0.6);
noise_2 = imnoise(bw_img, 'poisson');
noise_3 = imnoise(bw_img, 'speckle');

subplot(2,2,1)
imshow(bw_img);
title('Original')

subplot(2,2,2)
imshow(noise_1);
title('Salt & Pepper')

subplot(2,2,3)
imshow(noise_2);
title('Poisson')

subplot(2,2,4)
imshow(noise_3);
title('speckle')

% figure;
% imshow(bw_img);
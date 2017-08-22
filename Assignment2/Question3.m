source_img = imread('/home/ravi/Code/Sem7/MATLAB/Assignment2/spine.tif');
source_img = im2double(source_img);

log_1 = 1 * log(1 + source_img);
log_2 = 2 * log(1 + source_img);
log_3 = 5 * log(1 + source_img);
log_4 = 10 * log(1 + source_img);

power_1 = power(double(source_img), 1);
power_2 = power(double(source_img), 2);
power_3 = power(double(source_img), 4);
power_4 = power(double(source_img), 0.4);
power_5 = power(double(source_img), 0.5);

subplot(2,5,1)
imshow(source_img);
title('Original')

subplot(2,5,2)
imshow(log_1);
title('C = 1')

subplot(2,5,3)
imshow(log_2);
title('C = 2')

subplot(2,5,4)
imshow(log_3);
title('C = 5')

subplot(2,5,5)
imshow(log_4);
title('C = 10')

subplot(2,5,6)
imshow(power_1, 'DisplayRange', []);
title('Gamma = 1')

subplot(2,5,7)
imshow(power_2, 'DisplayRange', []);
title('Gamma = 2')

subplot(2,5,8)
imshow(power_3, 'DisplayRange', []);
title('Gamma = 4')

subplot(2,5,9)
imshow(power_4, 'DisplayRange', []);
title('Gamma = 0.4')

subplot(2,5,10)
imshow(power_5, 'DisplayRange', []);
title('Gamma = 0.5')
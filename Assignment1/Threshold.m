input_img = imread('C:\Users\student\MATLAB\SourceImg\icon.jpg');
grayscale_img = rgb2gray(input_img);

avg = img_avg(grayscale_img);
gated_img = gate(grayscale_img, avg);

imshow(grayscale_img);
figure;
imshow(gated_img);

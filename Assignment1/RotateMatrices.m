input_img = imread('C:\Users\student\MATLAB\SourceImg\icon.jpg');
output_img1 = vertical_flip(input_img);
output_img2 = horizontal_flip(input_img);

imshow(output_img1);
figure;
imshow(output_img2);

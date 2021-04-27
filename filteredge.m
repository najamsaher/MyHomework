I = imread('1.jpg');

h = fspecial('log',9,0.3)
I2 = imfilter(I,h);

subplot(1,2,1), imshow(I);
subplot(1,2,2), imshow(I2);
a = imread('22.jpg');
b = imcrop(a, [143, 15, 565-143, 407-15]);

subplot(1,2,1), imshow(a);
subplot(1,2,2), imshow(b);
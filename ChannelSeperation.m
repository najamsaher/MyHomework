a = imread('3.jpg');

r_channel = a(:,:,1);
g_channel = a(:,:,2);
b_channel = a(:,:,3);

subplot(2,2,1), imshow(a), title('Original Image');
subplot(2,2,2), imshow(r_channel), title('Red channel Image');
subplot(2,2,3), imshow(g_channel), title('Green Channel Image');
subplot(2,2,4), imshow(b_channel), title('Blue Channel Image');
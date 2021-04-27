%Concatinating 2 images
a = imread('1.jpg');
b = imread('2.jpg');
a1 = imresize(a, [100 100]);
b1 = imresize(b, [100 100]);

e = imfuse(a1,b1,'montage'); imshow(e);
[logo, map, alpha] = imread('logo.png');
nms = imread('1.jpg');

logoResize = imresize(logo, 0.6, 'bilinear');
alphaResize = imresize(alpha, 0.6, 'bilinear');
alphaResize = repmat(alphaResize, [1 1 3]);
alphaResize = im2double(alphaResize);

rows = size(logoResize, 1);
cols = size(logoResize, 2);

%FOR TOP RIGHT
nms(1:rows,end-cols+1:end,:) = uint8(alphaResize.*double(logoResize) + ...
(1-alphaResize).*double(nms(1:rows,end-cols+1:end,:)));                
         
            
figure; 
imshow(nms);
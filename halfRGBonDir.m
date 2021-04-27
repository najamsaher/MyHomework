 inputDir = 'saharjpg/'; 
 outputDir = 'halfRGB/';
 loadJPG = dir([inputDir '*.jpg']);
 
 for i=1:length(loadJPG)
    
    img = imread([inputDir loadJPG(i).name]); 
    name = loadJPG(i).name;
    img(:, 1:end/2, :) = repmat(rgb2gray(img(:, 1:end/2, :)), 1, 1, 3);

    imwrite(img,['halfRGB/' loadJPG(i).name]);
 end
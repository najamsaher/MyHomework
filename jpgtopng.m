inputDir = 'saharjpg/';  %input folder
 outputDir = 'saharpng/'; %output folder
 loadJPG = dir([inputDir '*.jpg']); 
 for i=1:length(loadJPG)
    
    img = imread([inputDir loadJPG(i).name]); %image is loaded from the inputDir
    name = loadJPG(i).name; %copies the name of image into variable name
    fprintf('%d) loading %s \t', i, name);
    name = name(1,1:end-4); % this removes the .jpg from the image name
    imwrite(img, [outputDir name '.png']);
    fprintf('%d) writing %s .png \n', i, name);
    
 end
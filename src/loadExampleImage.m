function [ image, width, height ] = loadExampleImage( image_path, plot_image )
%LOADEXAMPLEIMAGE load an image 
%INPUT:
%   image_path ... the path to the grayscale input image (default:
%   'cameraman.tif')
%   plot_image ... plot the example image (default: 0)
%OUTPUT:
%   image ... (width x height) the loaded example image
%   width ... the width of the image
%   height ... the height of the image
%COPYRIGHT:
%   David Pfahler 2016
%PROJECT:
%   CombPyr_ImSeg

% check number of input arguments and set default values
switch nargin
    case 2
        % everything is fine
    case 1
        plot_image = 0;
    case 0
        image_path = 'cameraman.tif';
        plot_image = 0;
    otherwise
        error('Invalid number of arguments');
end

image = imread(image_path);
if plot_image == 1
    figure;
    imshow(image);
    title('Original Image');
end

% get the width and height of the image
[width, height] = size(image);

if width < 2 || height < 2
    error('Too small image');
end

end
function [output_args ] = IMGCONVERSION( input_args )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
filename='/Users/ramit/Programs/MatlabProgs/edit1.JPG';
[cdata,map]=imread(filename);
hsvImg=rgb2hsv(cdata);
hplane=360.*hsvImg(:,:,1);
splane=hsvImg(:,:,2);
lplane=hsvImg(:,:,3);
nonRedIndx=~((hplane>input_args(1)) & (hplane<input_args(2)));
splane(nonRedIndx)=0;
lplane(nonRedIndx)=0;
hsvImg(:,:,2)=splane;
hsvImg(:,:,3)=lplane;
rgbImg=hsv2rgb(hsvImg);
imshow(rgbImg);
output_args= rgbImg;
end


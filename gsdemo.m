clc; clear all; close all; warning off;
%%
if(~isdeployed)
    cd(fileparts(which(mfilename)));
end
folder='D:\anchal Ph.D 2k22\Vssut_thesis format_HBK\Chapter3\';
 

 I1 = imread('park.jpg');
 I1=rgb2gray(I1);
 figure,imshow(I1);
 imwrite(I1,fullfile(folder,'parkgs.jpg'));
 
 I2 = imread('mountain.jpg');
 I2=rgb2gray(I2);
 figure,imshow(I2);
 imwrite(I2,fullfile(folder,'mountaings.jpg'));
 
 
 I3 = imread('beach.jpg');
 I3=rgb2gray(I3);
 figure,imshow(I3);
 imwrite(I3,fullfile(folder,'beachgs.jpg'));
 
 I4 = imread('airport.jpg');
 I4=rgb2gray(I4);
 figure,imshow(I4);
 imwrite(I4,fullfile(folder,'airportgs.jpg'));
 
 I5 = imread('railwaystation.jpg');
 I5=rgb2gray(I5);
 figure,imshow(I5);
 imwrite(I5,fullfile(folder,'railwaystationgs.jpg'));
 
 
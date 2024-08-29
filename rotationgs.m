clc; clear all; close all; warning off;
%%
if(~isdeployed)
    cd(fileparts(which(mfilename)));
end
folder='D:\anchal Ph.D 2k22\Vssut_thesis format_HBK\Chapter3\';
 
I1 = imread('park.jpg');
I1=rgb2gray(I1);
R1I1 = imrotate(I1,-30);
R2I1 = imrotate(I1,-90);
R3I1 = imrotate(I1,-120);
R4I1 = imrotate(I1,-180);

figure,imshow(I1),title('original park gray scale image');
figure,imshow(R1I1),title('rotate with 30 degree');
figure,imshow(R2I1),title('rotate with 90 degree');
figure,imshow(R3I1),title('rotate with 120 degree');
figure,imshow(R4I1),title('rotate with 180 degree');

  imwrite(R1I1,fullfile(folder,'park30.jpg'));
  imwrite(R2I1,fullfile(folder,'park90.jpg'));
  imwrite(R3I1,fullfile(folder,'park120.jpg'));
  imwrite(R4I1,fullfile(folder,'park180.jpg'));
  

  
 
 
 I2 = imread('mountain.jpg');
 I2=rgb2gray(I2);
  
R1I2 = imrotate(I2,-30);
R2I2 = imrotate(I2,-90);
R3I2 = imrotate(I2,-120);
R4I2 = imrotate(I2,-180);

figure,imshow(I2),title('original mountain gray scale image');
figure,imshow(R1I2),title('rotate with 30 degree mountain image');
figure,imshow(R2I2),title('rotate with 90 degree mountain image');
figure,imshow(R3I2),title('rotate with 120 degree mountain image');
figure,imshow(R4I2),title('rotate with 180 degree mountain image');

  imwrite(R1I2,fullfile(folder,'mountain30.jpg'));
  imwrite(R2I2,fullfile(folder,'mountain90.jpg'));
  imwrite(R3I2,fullfile(folder,'mountain120.jpg'));
  imwrite(R4I2,fullfile(folder,'mountain180.jpg'));
 
 
 
 I3 = imread('beach.jpg');
 I3=rgb2gray(I3);
 
R1I3 = imrotate(I3,-30);
R2I3 = imrotate(I3,-90);
R3I3 = imrotate(I3,-120);
R4I3 = imrotate(I3,-180);

figure,imshow(I3),title('original beach gray scale image');
figure,imshow(R1I3),title('rotate with 30 degree beach image');
figure,imshow(R2I3),title('rotate with 90 degree beach image');
figure,imshow(R3I3),title('rotate with 120 degree beach image');
figure,imshow(R4I3),title('rotate with 180 degree beach image');

  imwrite(R1I3,fullfile(folder,'beach30.jpg'));
  imwrite(R2I3,fullfile(folder,'beach90.jpg'));
  imwrite(R3I3,fullfile(folder,'beach120.jpg'));
  imwrite(R4I3,fullfile(folder,'beach180.jpg'));
 
 
 
 I4 = imread('airport.jpg');
 I4=rgb2gray(I4);
 
R1I4 = imrotate(I4,-30);
R2I4 = imrotate(I4,-90);
R3I4 = imrotate(I4,-120);
R4I4 = imrotate(I4,-180);

figure,imshow(I4),title('original airport gray scale image');
figure,imshow(R1I4),title('rotate with 30 degree airport image');
figure,imshow(R2I4),title('rotate with 90 degree airport image');
figure,imshow(R3I4),title('rotate with 120 degree airport image');
figure,imshow(R4I4),title('rotate with 180 degree airport image');

  imwrite(R1I4,fullfile(folder,'airport30.jpg'));
  imwrite(R2I4,fullfile(folder,'airport90.jpg'));
  imwrite(R3I4,fullfile(folder,'airport120.jpg'));
  imwrite(R4I4,fullfile(folder,'airport180.jpg'));
 
 
 
 
 I5 = imread('railwaystation.jpg');
 I5=rgb2gray(I5);

 
R1I5 = imrotate(I5,-30);
R2I5 = imrotate(I5,-90);
R3I5 = imrotate(I5,-120);
R4I5 = imrotate(I5,-180);

figure,imshow(I5),title('original railwaystation gray scale image');
figure,imshow(R1I5),title('rotate with 30 degree railwaystation image');
figure,imshow(R2I5),title('rotate with 90 degree railwaystation image');
figure,imshow(R3I5),title('rotate with 120 degree railwaystation image');
figure,imshow(R4I5),title('rotate with 180 degree railwaystation image');

  imwrite(R1I5,fullfile(folder,'railwaystation30.jpg'));
  imwrite(R2I5,fullfile(folder,'railwaystation90.jpg'));
  imwrite(R3I5,fullfile(folder,'railwaystation120.jpg'));
  imwrite(R4I5,fullfile(folder,'railwaystation180.jpg'));
 

 
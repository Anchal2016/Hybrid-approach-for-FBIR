clc; clear all; close all; warning off;
%%
if(~isdeployed)
    cd(fileparts(which(mfilename)));
end
folder='D:\anchal Ph.D 2k22\Vssut_thesis format_HBK\Chapter3\';




I1 = imread('park.jpg');
I1=rgb2gray(I1);
S1I1 = imresize(I1,0.7);
S2I1 = imresize(I1,1.0);
S3I1 = imresize(I1,2.0);
S4I1 = imresize(I1,5.0);

figure,imshow(I1),title('original park gray scale image');
figure,imshow(S1I1),title('scale with 0.7 vector');
figure,imshow(S2I1),title('scale with 1.0 vector');
figure,imshow(S3I1),title('scale with 2.0 vector');
figure,imshow(S4I1),title('scale with 5.0 vector');

  imwrite(S1I1,fullfile(folder,'park07.jpg'));
  imwrite(S2I1,fullfile(folder,'park10.jpg'));
  imwrite(S3I1,fullfile(folder,'park20.jpg'));
  imwrite(S4I1,fullfile(folder,'park50.jpg'));
  

  
 
 
 I2 = imread('mountain.jpg');
 I2=rgb2gray(I2);
  
S1I2 = imresize(I2,0.7);
S2I2 = imresize(I2,1.0);
S3I2 = imresize(I2,2.0);
S4I2 = imresize(I2,5.0);

figure,imshow(I2),title('original mountain gray scale image');
figure,imshow(S1I2),title('scale with 0.7  mountain image');
figure,imshow(S2I2),title('scale with 1.0  mountain image');
figure,imshow(S3I2),title('scale with 2.0  mountain image');
figure,imshow(S4I2),title('scale with 5.0  mountain image');

  imwrite(S1I2,fullfile(folder,'mountain07.jpg'));
  imwrite(S2I2,fullfile(folder,'mountain10.jpg'));
  imwrite(S3I2,fullfile(folder,'mountain20.jpg'));
  imwrite(S4I2,fullfile(folder,'mountain50.jpg'));
 
 
 
 I3 = imread('beach.jpg');
 I3=rgb2gray(I3);
 
S1I3 = imresize(I3,0.7);
S2I3 = imresize(I3,1.0);
S3I3 = imresize(I3,2.0);
S4I3 = imresize(I3,5.0);

figure,imshow(I3),title('original beach gray scale image');
figure,imshow(S1I3),title('scale with 0.7  beach image');
figure,imshow(S2I3),title('scale with 1.0  beach image');
figure,imshow(S3I3),title('scale with 2.0  beach image');
figure,imshow(S4I3),title('scale with 5.0  beach image');

  imwrite(S1I3,fullfile(folder,'beach07.jpg'));
  imwrite(S2I3,fullfile(folder,'beach10.jpg'));
  imwrite(S3I3,fullfile(folder,'beach20.jpg'));
  imwrite(S4I3,fullfile(folder,'beach50.jpg'));
 
 
 
 I4 = imread('airport.jpg');
 I4=rgb2gray(I4);
 
S1I4 = imresize(I4,0.7);
S2I4 = imresize(I4,1.0);
S3I4 = imresize(I4,2.0);
S4I4 = imresize(I4,5.0);

figure,imshow(I4),title('original airport gray scale image');
figure,imshow(S1I4),title('scale with 0.7 vector airport image');
figure,imshow(S2I4),title('scale with 1.0 vector airport image');
figure,imshow(S3I4),title('scale with 2.0 vector airport image');
figure,imshow(S4I4),title('scale with 5.0  vector airport image');

  imwrite(S1I4,fullfile(folder,'airport07.jpg'));
  imwrite(S2I4,fullfile(folder,'airport10.jpg'));
  imwrite(S3I4,fullfile(folder,'airport20.jpg'));
  imwrite(S4I4,fullfile(folder,'airport50.jpg'));
 
 
 
 
 I5 = imread('railwaystation.jpg');
 I5=rgb2gray(I5);

 
S1I5 = imresize(I5,0.7);
S2I5 = imresize(I5,1.0);
S3I5 = imresize(I5,2.0);
S4I5 = imresize(I5,5.0);

figure,imshow(I5),title('original railwaystation gray scale image');
figure,imshow(S1I5),title('scale with 0.7 vector railwaystation image');
figure,imshow(S2I5),title('scale with 1.0 vector railwaystation image');
figure,imshow(S3I5),title('scale with 2.0 vector railwaystation image');
figure,imshow(S4I5),title('scale with 5.0 vector railwaystation image');

  imwrite(S1I5,fullfile(folder,'railwaystation07.jpg'));
  imwrite(S2I5,fullfile(folder,'railwaystation10.jpg'));
  imwrite(S3I5,fullfile(folder,'railwaystation20.jpg'));
  imwrite(S4I5,fullfile(folder,'railwaystation50.jpg'));
 

 
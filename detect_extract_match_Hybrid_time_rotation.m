% F = imread('puri.jpg');
% S = imread('puri1.jpg');
%F = imread('dam_lp.jpg');
%S = imread('dam_rp.jpg');
F = imread('gujrat.jpg');
 S = (imresize(imrotate(F,20),1.2));
 
tic;
initime = cputime;
time1   = clock;
pause(1.0);  % Wait for a second;


figure,imshow(F),title('Sensed image');
 figure,imshow(S),title(' Ref image');
 F = im2double(rgb2gray(F));
S = im2double(rgb2gray(S));
 figure,imshow(F),title('Sensed Gray scale image');
 figure,imshow(S),title(' Ref Gray scale image');
%Detect Hybrid features
 
  points1 = detectBRISKFeatures(F);
  points1 = detectFASTFeatures(F);
points2 = detectBRISKFeatures(S);
points2 = detectFASTFeatures(S);

 figure,imshow(F); hold on; title('  detecting 10 Hybrid feature points of Sensed image ')
  plot(points1.selectStrongest(10));
 figure,imshow(S); hold on; title('  detecting 10 Hybrid feature points of Ref image ')
 plot(points2.selectStrongest(10));
 
%Extract features
 
[f1, vpts1] = extractFeatures(F, points1);
[f2, vpts2] = extractFeatures(S, points2);
 figure; imshow(F);title('extract Hybrid features from sensed image'), hold on
plot(vpts1);
 figure; imshow(S);title('extract Hybrid features from Ref image'), hold on
 plot(vpts2);
%  figure; imshow(F); hold on;title('  extracting 10 Hybrid feature points of Ref image ')
%     plot(vpts1.selectStrongest(10),'showOrientation',true);
%  figure; imshow(S); hold on;title('  extracting 10 Hybrid feature points of Sensed image ')
%     plot(vpts2.selectStrongest(10),'showOrientation',true);
%  
 %Match features
 
indexPairs = matchFeatures(f1, f2) ;
 matchedPoints1 = vpts1(indexPairs(:,1),:);
 matchedPoints2 = vpts2(indexPairs(:,2),:);
% matchedPoints1 = vpts1(indexPairs(1:10,1));
% matchedPoints2 = vpts2(indexPairs(1:10,2));

% figure; imshow(F); hold on;title('  Matching 10 Hybrid feature points of Ref image ')
% plot(matchedPoints1.selectStrongest(10),'showOrientation',true); 
% figure; imshow(S); hold on;title('Matching 10 Hybrid feature points of Sensed image ')
%   plot(matchedPoints2.selectStrongest(10),'showOrientation',true);
 
 
%Visualize candidate matches.
 
figure; ax = axes;
showMatchedFeatures(F,S,matchedPoints1,matchedPoints2,'montage','Parent',ax);
title(ax, 'Matched points from both images using Hybrid');
legend(ax, 'Matched points 1','Matched points 2');


%Registered image
%  
% [rows cols] = size(F);
%  
% Tmp = [];
% %zeros(rows, cols*2);
% temp = 0;
% S1 = [];
% k = 0; 
%  
% for j = 1:5
%     for i = 1:rows
%         S1(i,j) = S(i,j);
%     end
% end
%  
% for k = 0:cols-5% to prevent j to go beyond boundaries.
%     for j = 1:5
%         F1(:,j) = F(:,k+j);
%     end
%     temp = corr2(F1,S1);
%     Tmp = [Tmp temp]; % Tmp keeps growing, forming a matrix of 1*cols
%     temp = 0;
% end
% % 
%  
% [Min_value, Index] = max(Tmp);% .
%  
% n_cols = Index + cols - 1;% New column of output image.
%  
% Opimg = [];
% for i = 1:rows
%     for j = 1:Index-1
%         Opimg(i,j) = F(i,j);% First image is pasted till Index.
%     end
%     for k = Index:n_cols
%         Opimg(i,k) = S(i,k-Index+1);%Second image is pasted after Index.
%     end    
% end
%  
% [r_Opimg c_Opimg] = size(Opimg);
% 
% 
%  
% % figure,
% % subplot(1,3,1);
% % imshow(F);axis ([1 c_Opimg 1 c_Opimg])
% % title('First Image');
%  
% % subplot(1,3,2);
% % imshow(S);axis ([1 c_Opimg 1 c_Opimg])
% % title('Second Image');
%  
% % subplot(1,3,3);
% % figure,imshow(Opimg);axis ([1 c_Opimg 1 c_Opimg])
% % title('Registered Image');
% % 
% 
% 
fintime = cputime;
elapsed = toc;
time2   = clock;
fprintf('TIC TOC: %g\n', elapsed);
fprintf('CPUTIME: %g\n', fintime - initime);
fprintf('CLOCK:   %g\n', etime(time2, time1));


% End of Code

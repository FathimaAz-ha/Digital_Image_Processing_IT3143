%genaralization of log arithmic(gamma<1) and exponential(gamma>1)
%equation - C * (I).^G
I = imread('cameraman.tif');

subplot(2,2,1), imshow(I);

Id = im2double(I);

output1 = 2 * (Id).^0.5; %bright
output2 = 3 * (Id).^0.8; %bright
output3 = 5 * (Id).^3.2; %dark bcs  grater than 1

subplot(2,2,2), imshow(output1); 
subplot(2,2,3), imshow(output2); 
subplot(2,2,4), imshow(output3);

%gamma correction - application of powerlaw transformation 
%no need to apply im2double() function - it directly apply the range
A = imread('cameraman.tif');

subplot(1,2,1), imshow(A);

B = imadjust(A, [0 1], [0 1], 1./3);  %gamma = 1/3

subplot(1,2,2), imshow(B);
%Exponential Transforamtion O = c * (1+ A.^I-1]
I = imread('cameraman.tif');

subplot(2,2,1), imshow(I);

Id = im2double(I);

output1 = 2 * (((1+0.19).^(Id))-1);
output2 = 3 * (((1 + 0.263) .^(Id)) - 1);
output3 = 5 * (((1 + 0.578).^(Id)) - 1);

subplot(2,2,2), imshow(output1); 
subplot(2,2,3), imshow(output2); 
subplot(2,2,4), imshow(output3);

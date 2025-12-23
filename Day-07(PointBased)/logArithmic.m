I = imread('cameraman.tif');
B = double(A);
C = im2double(I);

subplot(2,2,1), imshow(I);

Id = im2double(I);

output1 = 2 * log(1+ Id);
output2 = 3 * log(1 + Id); 
output3 = 5* log(1 + Id); 

figure; 
subplot(2,2,2), imshow(output1); 
subplot(2,2,3), imshow(output2); 
subplot(2,2,4), imshow(output3);





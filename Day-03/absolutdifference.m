A = imread('cameraman.tif'); %read in 1st image
B = imread('circuit.tif'); %read in 2nd image

subplot(2,3,1), imshow(A); %Display 1st image
subplot(2,3,2), imshow(B); %Display 2nd image

C = imresize(B, [size(A, 1) size(A,2)]);
subplot(2,3,3), imshow(C);
output1 = imsubtract(A, C); %subtracted image

subplot(2,3,4), imshow(output1);
output2=imabsdiff(A, C);  %subtracted the images according to the absolute difference

subplot(2,3,5), imshow(output2);
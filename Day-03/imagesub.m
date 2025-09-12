A = imread('cameraman.tif'); %read in 1st image
B = imread('circuit.tif'); %read in 2nd image

subplot(2,2,1), imshow(A); %Display 1st image
subplot(2,2,2), imshow(B); %Display 2nd image

C = imresize(B, [size(A,1) size(A,2)]);
subplot(2,2,3), imshow(C);

output = imsubtract(A,C); %adding the image - blending

subplot(2,2,4), imshow(output); %display the output
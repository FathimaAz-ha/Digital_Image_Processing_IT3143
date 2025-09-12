A = imread('cameraman.tif'); %read in 1st image
B = imread('circuit.tif'); %read in 2nd image
C=imresize(B, [size(A,1) size(A,2)]);

A = imbinarize(A);
C = imbinarize(C); 

outupt = A | C;

subplot(1,2,1), imshow(output);

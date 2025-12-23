a = imread('cameraman.tif');
acs = imadjust(a, stretchlim(a, [0.05 0.95]),[]);

figure, histeq(a);
subplot(1,4,1), imshow(a);
subplot(1,4,2), imshow(acs);
subplot(1,4,3), imhist(a); 
subplot(1,4,4), imhist(acs);

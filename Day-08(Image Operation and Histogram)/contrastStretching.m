%when you see the narrow histogram - the image is not clear
%make the histogram clear and wide we use contrast stretching

I = imread('pout.tif');
Ics = imadjust(I, stretchlim(I, [0.05 0.95]), []); %stretch contrast

subplot(1,4,1),imshow(I); %display Image
subplot(1,4,2), imshow(Ics); %display result
subplot(1,4,3), imhist(I);
subplot(1,4,4), imhist(Ics);
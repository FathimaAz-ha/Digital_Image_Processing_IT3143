%to add an image from another folder without matlab folder
%a = imread("Z:\3rd yr sem 1\DIP_IT3143\Screenshot 2025-04-28 091702.png");

a = imread('cameraman.tif');
subplot(1,2,1) %showing both images in one output subplot(row,column,order)
imshow(a);

subplot(1,2,2);
colormap(gca, "jet") %get current axis for current image/ or subplot
imagesc(a);


%to save the image
imwrite(a,'savedImage.png');

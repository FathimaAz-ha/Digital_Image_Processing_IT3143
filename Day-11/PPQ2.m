% Read and siplay the original images

I1 = imread('car1.png'); 
I2 = imread('car2.png'); 

I1grey = rgb2gray(I1); 
I2grey = rgb2gray(I2); 

figure; 
subplot(2,1,1), imshow(I1); 
subplot(2,2,2), imshow(I2); 

subtractTwoImages(I1grey, I2grey);
subtractTwoImages(I2grey, I1grey); 



function sub = subtractTwoImages(img1, img2)
sub = img1-img2;
end
A= imread('circles.png'); 
bw = bwperim(A); 

se = strel('disk', 5); 

bw1 = imerode(A, se); 
bw2 = A - bw1; 

subplot(1,3,1), imshow(A);
subplot(1,3,2), imshow(bw); 
subplot(1,3,3), imshow(bw2); 
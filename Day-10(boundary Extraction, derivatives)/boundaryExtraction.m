%BOUNDARY EXTRACTION - GETTING THE OUTLINE
%1. STRUCTURING FUNCTION - use the erosion and subtract the eroded image
%from the original image

A= imread('circles.png'); 

se = strel('suqare', 5); 
bw1 = imerode(A, se); 
bw2 = A - bw1; 


%2. USING THE PERIMETER (DIRECT FUNCTION)
bw = bwperim(A); 

%Displaying the outputs
subplot(1,3,1), imshow(A);
subplot(1,3,2), imshow(bw); 
subplot(1,3,3), imshow(bw2); 

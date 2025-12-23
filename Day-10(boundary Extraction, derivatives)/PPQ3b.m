I = imbinarize(imread('rice.png')); 
se = strel('square', 15);  %u can use strel('disk', 15)

% 1)opening - estimate the background
opening = imopen(I, se); 
 
% 2) Subtract the image frm original image to illuminate the correction
Isub = I - opening; %imsubtract(I, opening)  

% 3) Improve contrast
Ifinal = imadjust(Isub);

% Display results
figure;
subplot(1,3,1), imshow(I), title('Original');
subplot(1,3,2), imshow(Isub, []), title('Illumination Corrected');
subplot(1,3,3), imshow(Ifinal), title('Contrast Enhanced');

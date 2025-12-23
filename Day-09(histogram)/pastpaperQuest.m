I = imread('yellowlily.jpg');
Ihsv = rgb2hsv(I); 
V = histeq(Ihsv(:, :, 3));
Ihsv(:, :, 3) = V;
Iout = hsv2rgb(Ihsv); 
subplot(2,3,1), imshow(I); 
subplot(2,3,2), imshow(Iout), title('Equalized Image'); 

Igray = rgb2gray(I); 
subplot(2,3,3), imshow(Igray), title('Grey Image'); 

Ics = imadjust(Igray, stretchlim(Igray, [0.05 0.95]), []);
subplot(2,3,4), imshow(Ics), title('Contrast Image'); 

IEc = edge(Igray, 'canny');
subplot(2,3,5), imshow(IEc);



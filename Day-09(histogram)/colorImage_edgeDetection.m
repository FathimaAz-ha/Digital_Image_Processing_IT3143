I = imread('onion.png');
Igray = rgb2gray(I);
IEr = edge(Igray, 'roberts'); %roberts Edge
IEp = edge(Igray, 'prewitt'); %prewitt edges
IEs = edge(Igray, 'sobel'); %sobel edges
IEc = edge(Igray, 'canny'); %canny Edges

subplot(2,3,1), imshow(I); 
subplot(2,3,2), imshow(IEr); 
subplot(2,3,3), imshow(IEp); 
subplot(2,3,4), imshow(IEs); 
subplot(2,3,5), imshow(IEc); 
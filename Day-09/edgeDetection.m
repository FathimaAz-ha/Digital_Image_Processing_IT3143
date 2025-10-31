I = imread('cameraman.tif');
IEr = edge(I, 'roberts'); %roberts Edge
IEp = edge(I, 'prewitt'); %prewitt edges
IEs = edge(I, 'sobel'); %sobel edges
IEc = edge(I, 'canny'); %canny Edges

subplot(2,3,1), imshow(I); 
subplot(2,3,2), imshow(IEr); 
subplot(2,3,3), imshow(IEp); 
subplot(2,3,4), imshow(IEs); 
subplot(2,3,5), imshow(IEc); 

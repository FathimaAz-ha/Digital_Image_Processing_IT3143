%lablacian filter - 
%first you have to use grey scale image

I = imread('cameraman.tif');
k = fspecial('log', [20 20], 8.0); %create laplacian filter
IEzc = edge(I, 'zerocross', [], k); %zero crossing edges(auto threshold)


subplot(2,4,1), imshow(I); 
subplot(2,4,2), imshow(IEzc); 

j = fspecial('log', [10 10], 4.0);
IEz = edge(I, 'zerocross', [], j); 
subplot(2,4,3), imshow(IEz); 

b = fspecial('log', [5 5], 2.0);
IE = edge(I, 'zerocross', [], b); 
subplot(2,4,4), imshow(IE); 

IEs = edge(I, 'sobel');
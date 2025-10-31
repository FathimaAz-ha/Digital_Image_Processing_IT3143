%lablacian filter - 
%first you have to use grey scale image

I = rgb2gray(imread('peppers.png'));
k = fspecial('log', [10 10], 3.0); %create laplacian filter
IEzc = edge(I, 'zerocross', [], k); %zero crossing edges(auto threshold)

subplot(1,2,1), imshow(I); 
subplot(1,2,2), imshow(IEzc); 


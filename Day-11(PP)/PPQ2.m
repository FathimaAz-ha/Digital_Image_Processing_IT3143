%a
A = imread('car_1.jpg');
B = imread('car_2.jpg');
figure;
subplot(2,2,1),imshow(A),title('Car 1');
subplot(2,2,2),imshow(B),title('Car 2');

%b
C=rgb2gray(A);
D=rgb2gray(B);
figure;
subplot(2,2,1),imshow(C),title('Car 1 gray');
subplot(2,2,2),imshow(D),title('Car 2 gray');

%c
function X=SubstractTwoImages(img1,img2)
X=img1-img2;
end

E=SubstractTwoImages(A,B);
figure;
subplot(2,2,1),imshow(E),title('Substract images');

%d
E=SubstractTwoImages(C,D);
figure;
subplot(2,2,1),imshow(E),title('SubGray car1,car2 images');

E=SubstractTwoImages(D,C);
subplot(2,2,2),imshow(E),title('SubGray car2,car1 images');

%e
result =C;   % initialize result image

[rows, cols] = size(C);

for i = 1:rows
    for j = 1:cols
        if D(i,j) > C(i,j)
            result(i,j) = D(i,j);
        end
    end
end

figure;
subplot(2,2,1),imshow(result);
title('Pixels copied where car2 > car1');

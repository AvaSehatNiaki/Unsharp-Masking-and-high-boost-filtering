%Read and display the input image
I = imread('testpattern.tif');
whos a

%Create a gaussian filter
H = fspecial ('gaussian',512,11);

%Apply a gaussian filter
Gaussian = imfilter(I,H);

imshow(I);
hold on;
imshow(Gaussian);



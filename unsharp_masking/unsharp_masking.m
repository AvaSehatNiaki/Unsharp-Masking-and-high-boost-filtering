%Read and display the input image
I = imread('blurry-moon.tif');
imshow(I);
hold on;
title('Original Image');

%Create a gaussian filter (bluring)
H = fspecial ('gaussian',512,11);

%Apply a gaussian filter
Gaussian = imfilter(I,H);
figure
imshow(Gaussian);
title('Blurred Image');

%Apply a unsharp filter
J = I- Gaussian;
Unsharp = I + J;
figure
imshow(Unsharp);
title('Sharpened Image');

%multiply the unsharp mask for high boost filtering
HighBoost = I + 10* J;
figure
imshow(HighBoost);
title('Highboosted Image');


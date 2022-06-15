%%Blurring section
G = imread('Cameraman.png');
G_double = im2double(G); %We need to convert the RGB into a double-type elements Matrix so that Matlab can handle it at once. 

PSF = fspecial('motion',21,11); % The Point Spread Function that blurs 21 pixels by an angle of 11 degrees.

blurred_image = imfilter(G_double,PSF,'conv','circular'); % This is the essence of filters concept. We should pass the normal image by a blurring filter in order to get the blurred image.
subplot(1,2,1)
imshow(blurred_image);
title('Blurred Image');
%% Deblurring
 my_recovered = deconvwnr(blurred_image,PSF); % We are doing the inverse process of blurring: "de-convolution".
 subplot(1,2,2)
 imshow(my_recovered);
 title('Recovered Image');
%% Reading our gray scale image
G = imread('Cameraman.png');
%% Placing a black pixel at the top left 
G(5,10,1) = 0;
G(5,10,2) = 0;
G(5,10,3) = 0;
%% Placing a white pixel above the blck pixel
G(5,5,1) = 256;
G(5,5,2) = 256;
G(5,5,3) = 256;
%% Showing the editted image
imshow(G)
clc;
clear;

img = imread('b1.png');

if size(img, 3) == 3
    img = rgb2gray(img);
end

figure, imshow(img), title('Original Image');

enhanced = imadjust(img);
figure, imshow(enhanced), title('Contrast Enhanced');

if exist('adaptthresh', 'file') == 2
    T = adaptthresh(enhanced, 0.4);
    bw = imbinarize(enhanced, T);
    titleStr = 'Adaptive Thresholding';
else
    level = graythresh(enhanced);
    bw = im2bw(enhanced, level);
    titleStr = 'Otsu Global Thresholding';
end

figure, imshow(bw), title(titleStr);

bw_clean = bwareaopen(bw, 300);
figure, imshow(bw_clean), title('Cleaned Binary Image');

edges = edge(bw_clean, 'sobel');
figure, imshow(edges), title('Edge Detection');

stats = regionprops(bw_clean, 'BoundingBox', 'Area');
figure, imshow(img), title('Detected Regions');
hold on;
for k = 1:length(stats)
    if stats(k).Area > 500
        rectangle('Position', stats(k).BoundingBox, 'EdgeColor', 'r', 'LineWidth', 2);
    end
end
hold off;

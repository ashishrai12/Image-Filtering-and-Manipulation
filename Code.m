%Image read and basic manipulations
%Reading the image
a = imread('cameraman.tif');
figure('Name','Original Image','NumberTitle','off');
imshow(a);

%Convert image to black and white (binary)
figure('Name','Binary Image','NumberTitle','off');
bw = im2bw(a);
imshow(bw);

%Transpose of image (rotate by 90)
figure('Name','Rotated by 90 degrees','NumberTitle','off');
imshow (a');

%flip image horizontally
figure('Name','Horizontally flipped ,'NumberTitle','off');
for i = 1:256
    b(:,i) = a(:,257-i);
end
imshow(b);

%flip image vertically
figure('Name','Vertically flipped,'NumberTitle','off');
for i = 1:256
    b(i,:) = a(257-i,:);
end
imshow(b);

%Negative of Image
figure('Name','Negative of Image','NumberTitle','off');
an = 256-a;
imshow(an)

%Min, Max, Mean, Std. Dev. value of image array
mi = min(min(a))
mx = max(max(a))
me = mean(mean(a))
sd = std2(a)

%   Automated Indicator System for Car Parking 

%   ***** vijeetnigam26 ***** 

a=imread('-------------------Path-------------------\Data\cp32_1.jpg');         % Live Parking Lot Image 
b=imread('-------------------Path-------------------\Data\cp32_blank.jpg');     % BG Parking Lot Image
m=imresize(b, [size(a,1) size(a,2)]);
d= imsubtract(m, a); 			% Image Subtraction
f=im2bw(d, 0.1);
bw3 = imfill(f, 'holes');
bw4 = bwareaopen(bw3, 10);
cars = bwconncomp(bw4);
d1 = cars.NumObjects; 			% Counting No. of Objects
total = 144 - d1;
subplot(121); imshow(a); title('LIVE IMAGE OF PARKING LOT');
subplot(122); imshow(bw3); title('COMPUTER PROCESSED IMAGE');
[ r c l ] = size(bw4);			% for calculation
img1 = bw4(1:r/2, 1:c/2, :); 	% Dividing Image
img2 = bw4(1:r/2, c/2:c, :);
img3 = bw4(r/2:r, 1:c/2, :);
img4 = bw4(r/2:r, c/2:c, :);
cars1 = bwconncomp(img1);
n1 = cars1.NumObjects;
cars2 = bwconncomp(img2);
n2 = cars2.NumObjects;
cars3 = bwconncomp(img3);
n3 = cars3.NumObjects;
cars4 = bwconncomp(img4);
n4 = cars4.NumObjects;


[ rr cc ll ] = size(a);			% for display
imgg1 = a(1:rr/2, 1:cc/2, :);
imgg2 = a(1:rr/2, cc/2:cc, :);
imgg3 = a(rr/2:rr, 1:cc/2, :);
imgg4 = a(rr/2:rr, cc/2:cc, :);
subplot(221); imshow(imgg1); title('REGION 1');
subplot(222); imshow(imgg2); title('REGION 2');
subplot(223); imshow(imgg3); title('REGION 3');
subplot(224); imshow(imgg4); title('REGION 4');

REGION = [ n1 n2 n3 n4 ]; 	   %Position Filled 
for i=1:4
    if max(REGION) == 36       % When Parking Region Full
        REGION(i)=0;
    end
end
maxregion = max(REGION);
t6 = 36 - maxregion; 		   % Available Region Space
 
for i=1:4
    if REGION(i)== maxregion
z = i;
break
    end
end
 
%fprintf('Check Available space in parking lot REGION %d ', z);
 
switch z
    case 1
        imgp = img1; 
        imgppp = imgg1;
    case 2
        imgp = img2;
        imgppp = imgg2;
    case 3
        imgp = img3;
        imgppp = imgg3;     
    case 4
        imgp = img4;
        imgppp = imgg4;
end
[ r1 c1 l1 ] = size(imgp); 			% for calculation
imgp1 = imgp(1:r1/3, 1:c1/2, :);
imgp2 = imgp(1:r1/3, c1/2:c1, :);
imgp3 = imgp((r1/3)+1:2*(r1/3), 1:c1/2, :);
imgp4 = imgp((r1/3)+1:2*(r1/3), c1/2:c1, :);
imgp5 = imgp((2*(r1/3))+1:r1, 1:c1/2, :);
imgp6 = imgp((2*(r1/3))+1:r1, c1/2:c1, :);
car1 = bwconncomp(imgp1);
nm1 = car1.NumObjects;
car2 = bwconncomp(imgp2);
nm2 = car2.NumObjects;
car3 = bwconncomp(imgp3);
nm3 = car3.NumObjects;
car4 = bwconncomp(imgp4);
nm4 = car4.NumObjects;
car5 = bwconncomp(imgp5);
nm5 = car5.NumObjects;
car6 = bwconncomp(imgp6);
nm6 = car6.NumObjects;
 
REGIONP = [ nm1 nm2 nm3 nm4 nm5 nm6 ]; %Filled Position
for i=1:4
    if max(REGIONP) == 6               % When Parking Lane Full
        REGIONP(i)=0;
    end
end

maxregionp = max(REGIONP);
t1 = 6 - maxregionp;
 
for i=1:4
    if REGIONP(i)== maxregionp
z2 = i;
break
    end
end
 
if z == 1   				% Region 1
    switch z2
        case 1
            lane = 'A';
        case 2 
            lane = 'B';
        case 3
            lane = 'C';
        case 4 
            lane = 'D';
        case 5 
            lane = 'E';
        case 6
            lane = 'F';
    end
else if z==3 				% Region 3
        switch z2
        case 1
            lane = 'G';
        case 2 
            lane = 'H';
        case 3
            lane = 'I';
        case 4
            lane = 'J';
        case 5 
            lane = 'K';
        case 6
            lane = 'L';
        end
    else if z==2 			% Region 2
        switch z2
        case 1
            lane = 'M';
        case 2 
            lane = 'N';
        case 3
            lane = 'O';
        case 4 
            lane = 'P';
        case 5 
            lane = 'Q';
        case 6
            lane = 'R';
    end
else if z==4 				%Region 4
    switch z2
        case 1
            lane = 'S';
        case 2 
            lane = 'T';
        case 3
            lane = 'U';
        case 4 
            lane = 'V';
        case 5 
            lane = 'W';
        case 6
            lane = 'X';
    end
    end
        end
    end
end
  
[ r1 c1 l1 ] = size(imgppp)      % for display
imgp1 = imgppp(1:r1/3, 1:c1/2, :);
imgp2 = imgppp(1:r1/3, c1/2:c1, :);
imgp3 = imgppp((r1/3)+1:2*(r1/3), 1:c1/2, :);
imgp4 = imgppp((r1/3)+1:2*(r1/3), c1/2:c1, :);
imgp5 = imgppp((2*(r1/3))+1:r1, 1:c1/2, :);
imgp6 = imgppp((2*(r1/3))+1:r1, c1/2:c1, :);
if z==1							% Region 1
subplot(321); imshow(imgp1); title('Lane A');
subplot(322); imshow(imgp2); title('Lane B');
subplot(323); imshow(imgp3); title('Lane C');
subplot(324); imshow(imgp4); title('Lane D');
subplot(325); imshow(imgp5); title('Lane E');
subplot(326); imshow(imgp6); title('Lane F');
else if z==3					% Region 3
subplot(321); imshow(imgp1); title('Lane G');
subplot(322); imshow(imgp2); title('Lane H');
subplot(323); imshow(imgp3); title('Lane I');
subplot(324); imshow(imgp4); title('Lane J');
subplot(325); imshow(imgp5); title('Lane K');
subplot(326); imshow(imgp6); title('Lane L');
    else if z==2					% Region 2
subplot(321); imshow(imgp1); title('Lane M');
subplot(322); imshow(imgp2); title('Lane N');
subplot(323); imshow(imgp3); title('Lane O');
subplot(324); imshow(imgp4); title('Lane P');
subplot(325); imshow(imgp5); title('Lane Q');
subplot(326); imshow(imgp6); title('Lane R');
else if z==4					% Region 4
subplot(321); imshow(imgp1); title('Lane S');
subplot(322); imshow(imgp2); title('Lane T');
subplot(323); imshow(imgp3); title('Lane U');
subplot(324); imshow(imgp4); title('Lane V');
subplot(325); imshow(imgp5); title('Lane W');
subplot(326); imshow(imgp6); title('Lane X');
    end
        end
    end
end
if(total>0)
fprintf('\n\nWELCOME! \nPARKING AVAIABLE\n');
fprintf('Available space in parking lot Floor 2 is %d \n', total);
fprintf('Available space in parking lot " REGION %d " is %d \n',z,t6);
fprintf('Available space in parking lot LANE %s is %d \n\n\n\n\n',lane, t1);
 
else
    disp('Sorry for the Inconvenience - PARKING FULL')
    
end

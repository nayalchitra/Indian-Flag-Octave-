% Indian Flag
clc;clear;close all;

flag=zeros(300,600,3);

% Safron Color
flag(1:100,:,1)=1;
flag(1:100,:,2)=0.585;

% White  Color
flag(101:200,:,:)=1;

% Green Color
flag(201:300,:,2)=0.4;

% Ashoka Chakra

% Circle 
for i=101:200;
  for j=1:600;
    if((sqrt(power (i-150,2)+power(j-300,2)) <= 50) && 
      (sqrt(power(i-150,2)+power(j-300,2))>=48))
      flag(i,j,1:2)=0;
    end
  end
end

% spokes

for k=0:12
  for i = 100:200
    for j=250:350
      if(sqrt(power(i-150,2)+power(j-300,2))<=50)
        if((j-300)-(i-150)*tand(15*k)>=0 && ((j-300)-(i-150)*tand(15*k))<=3)
          flag(i,j,1:2)=0;
        end
        if(i==150)
          flag(i,j,:)=0;
          flag(i,j,3)=1;
        end
        
      end
    end
  end
end

%figure;imshow(flag);
imshow(flag);


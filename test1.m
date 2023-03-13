clc
clear all
evse = zeros(12,4);
evse(1,:) = 1;
evse(2,:) = [0 5 0 2];
evse(3,:) = [79.2 80.3 65.8 72.4];
evse(4,:) = [0.45 0.46 0.64 0.56];
evse(5,:) = [0.84 0.54 0.69 0.74];
evse(6,:) = [0.05 0.05 0.05 0.05];
evse(7,:) = [0.95 0.95 0.95 0.95];
evse(8,:) = [9 5 10 9];
evse(9,:) = [-5 -5 -5 -5];
evse(10,:) = [11 11 11 11];
evse(11,:) = [83 83 83 83];
evse(12,:) = [83 83 83 83];
% 운용 가능 플러그 개수 확인하기
idx = find(evse(1,:)==0);
empty_num = size(find(evse(1,:) == 0),2);

% 운용 가능 플러그 개수만큼 분포 발생하기
if sum(empty_num) ~= 0
   for i = 1:empty_num
       evse(1,idx(i)) = randi([0 1]);
   end
end
y = evse;
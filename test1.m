clc
clear all
count = 1

% header = {"time", "capacity", "init_soc", "target", "dur", "min", "max", "Pmin", "Pmax", "chg_eff", "dch_eff", "test1", "test2"};
evse = zeros(11,3);
evse(:,2) = 1;
N = 10;
% for k=1:N
%     my_field = strcat('v',num2str(k));
%     variable.(my_field) = k*2;
% end
% 
% for i = 1:size(evse,2)
%     if (evse(1,i) == 1) && (sum(evse(2:size(evse,1),i)) ~= 0)
%         for j = 1:size(evse,1)
%             variable.(sprintf('v%d',i+1)) = transpose(evse(:,i));
%             variable.v3 = array2table(variable.v3,"VariableNames",header{1});
% 
%         end
%     end
% end
if count == 1
    for i=1:size(evse,2)
        data_evse = sprintf('v%d',i);
        evse_1.(data_evse) = nan;
    end
end

for i = 1:size(evse,2)
    if (evse(1,i) == 1) && (sum(evse(2:size(evse,1),i)) ~= 0)
        for t = 1:size(evse,2)
            evse_1.(sprintf('v%d',i+1)) = transpose(evse(:,i));
            evse_1.(sprintf('v%d',i+1)) = array2table(evse_1.(sprintf('v%d',i+1)),"VariableNames",["time", "capacity", "init_soc", "target", "min", "max", "dur", "Pmin", "Pmax", "chg_eff", "dch_eff"]);
        end
    end
end
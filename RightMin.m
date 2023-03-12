function [MinVal,Position] = RightMin(ONEDArray)
% This function finds the value and position of the rightmost minimum in an
% array.
%
% Input:            ONEDArray - 1D array of values (NOT empty)
% Outputs:          MinVal - The minimum value
%                   Position - The rightmost position of that minimum
%                   value.
%
% Author:           KTAN185
% Last Modified:    20/08/22

% Use the min function to determine the smallest value in the input array.
MinVal = min(ONEDArray);

% Run through the input array locating positions of the minimum value.
MinValCount = strfind(ONEDArray, min(ONEDArray));

% Find the last index of the minimum value in the input array and output
% its position.
Position = MinValCount(end);
end

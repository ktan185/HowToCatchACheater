function [HashValue] = Hash31(OneDArray)
% This function calculates a hash value from an array of values.
%
% Input:            OneDArray - A 1D array of values
% Output:           HashValue - An integer value
%
% Author:           KTAN185
% Last Modified:    19/08/22

% Initialise variables
HashSize = 2^20;
HashValue = 0;

if isempty(OneDArray)
    % If the input array is empty,
    HashValue = 0;
    % return a value of zero
end

% Otherwise, loop through the length of the input array to calculate
% the hash value using the provided hash value formula.
for i = 1:length(OneDArray)
    HashValue = OneDArray(i) + 31.*HashValue;
    HashValue = mod(HashValue,HashSize);
end
end




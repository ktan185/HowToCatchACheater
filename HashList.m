function [HashArray] = HashList(CArray)
% This function calculates the hash31 value for every string stored in a
% cell array to generate a sequence of hashed values.
%
% Input:            CArray - A 1xn cell array where each element of the
%                   array is a string.
% Output:           HashArray - A 1xn array containing hash values for the
%                   corresponding elements of the cell array.
%
% Author:           KTAN185
% Last Modified:    21/08/22

% Initialize length of output array.
HashArray = (zeros(1,length(CArray)));

% Loop through each index of the cell assigning a hash value to each
% string stored in each index.
for i = 1:length(CArray)
    % Convert each cell index to numerical before calling Hash31.
    HashArray(i) = Hash31(cell2mat(CArray(i)));
end
end

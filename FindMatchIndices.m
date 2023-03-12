function [MatchInt] = FindMatchIndices(ArrayOne,ArrayTwo)
% This function compares two non-empty 1D arrays and returns a list of
% index positions from array 1 of any values that also appear in array 2.
%
% Inputs:           ArrayOne - First array to compare. (Non-empty)
%                   ArrayTwo - Second array to compare. (Non-empty)
% Output:           MatchInt - A 1D Array containing index positions
%                   of array 1 also found in array 2.
%
% Author:           KTAN185
% Last Modified:    20/08/22

% Intialise output as the length of ArrayOne with zeros in each index.
MatchInt = zeros(1,length(ArrayOne));

for i = 1:length(ArrayOne)
    for j = 1:length(ArrayTwo)
        % Compare each index of the second array with the current index
        % of the first.
        if ArrayOne(i) == ArrayTwo(j)
            MatchInt(i) = i;
            % If we find a common integer, assign that integer's index to
            % the output array.
        end
    end
end

% If the output array = initialised array,
if MatchInt == zeros(length(ArrayOne))
    MatchInt = [];
    % output an empty array.
else
    MatchInt = transpose(nonzeros(MatchInt));
    % Otherwise correct output by removing all unnecessary zeros.
end
end
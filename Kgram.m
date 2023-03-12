function [CellArray] = Kgram(kVal, CharString)
% This function takes a string and divides it into a sequence of k-grams,
% where each element is k characters long.
%
% Inputs:           kVal - A k value (Positive integer > 0)
%                   CharString - a character string
% Output:           CellArray - A 1xn array where each element 
%                   of the array is one of the k-grams.
%
% Author:           KTAN185
% Last Modified:    21/08/22

% Initialise size of output cell array
CellArray = {length(CharString)};

% If k is greater than the length of the string,
if kVal > length(CharString)
    % return a 1x1 cell array containing the string.
    CellArray = {CharString};
else
    % loop through the input string,
    for i = 1:length(CharString)
        % when the loop reaches 1 index after the value of k
        if i > length(CharString)-kVal+1
            % Break the loop.
            break
        else
            % Index each element of the output cell array with each kgram.
            CellArray{i} = CharString(i:i+kVal-1);
        end
    end
end

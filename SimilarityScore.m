function [MatchScore] = SimilarityScore(IndexArray,kVal,TotalLength)
% This function Calculates a similarity score by taking a list of
% matched positions for a string and determining what proportion of
% characters in a string matched.
%
% Inputs:           IndexArray - 1D array containing list of indices which
%                   correspond to position matches.
%                   kVal - The k value indicates the length of each match
%                   TotalLength - The total length of the string that was
%                   converted into k-grams.
% Output:           MatchScore - Percentage of string that matched.
%
% Author:           KTAN185
% Last Modified:    24/08/2022

% Initialise variables
MatchScore = 0;
n = 1;
counter = 1:TotalLength;

for i = IndexArray
    % If IndexArray is empty,
    if isempty(IndexArray)
        % end the loop.
        break
    else
        % Find out how many positions match
        MatchPos(n:n+kVal-1) = counter(i:i+kVal-1);
        % Add the k value to the n to index the next set of matching
        % positions.
        n = n+kVal;
        % Call the unique function to remove any duplicate positions found.
        ActualMatches = length(unique(MatchPos));
        % Sum the total number of matched positions and divide by the total
        % length to get the percentage of the string that matches.
        MatchScore = ActualMatches/TotalLength;
    end
end
end

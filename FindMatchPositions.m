function [ComPos1,ComPos2] = FindMatchPositions(FP1,FP2)
% This function compares two fingerprints and determines:
% 1) which positions in fingerprint 1 have a value also found in string 2
% 2) which positions in fingerprint 2 have a value also found in string 1
%
% Inputs:           FP1 - Fingerprint for string 1
%                   FP2 - Fingerprint for string 2
% Outputs:          ComPos1 - 1D array of indexes of string 1 also found in
%                   string 2
%                   ComPos2 - 1D array of indexes of string 2 also found in
%                   string 1
%
% Author:           KTAN185
% Last Modified:    24/08/22

% Call FindMactchIndices to find matching indexs between the fingerprints.
ComInt1 = FindMatchIndices(FP1(1,:),FP2(1,:));
ComInt2 = FindMatchIndices(FP2(1,:),FP1(1,:));

% If the sum of either of the positions is zero - no common indexs,
if sum(ComInt1) == 0 || sum(ComInt2) == 0
    % Return an empty array.
    ComPos1 = [];
    ComPos2 = [];
else
    % Locate the index of the common integers.
    for i = 1:length(ComInt1)
        ComPos1(i) = FP1(2,ComInt1(i));
    end
    for j = 1:length(ComInt2)
        ComPos2(j) = FP2(2,ComInt2(j));
    end
end
end




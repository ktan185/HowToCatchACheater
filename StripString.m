function [Stripped] = StripString(CharString)
% This function strips out whitespace and other unprintable characters,
% and convert all uppercase characters to uppercase.
%
% Input:            CharString - A character string
% Output:           Stripped - A lower case character string with
%                   unprintable characters stripped out
%
% Author:           KTAN185
% Last Modified:    20/08/22

% Convert input string to ASCII numerical equivalent.
AscNum = double(CharString);

% Initialise output array.
Stripped = zeros(1,length(AscNum));

% Loop through length of input string.
for i = 1:length(AscNum)
    % If the current index is within 33 to 126 inclusive,
    if AscNum(i) >= 33 && AscNum(i) <= 126
        Stripped(i) = AscNum(i);
        % replace current output index with current input index value.
    else
        Stripped(i) = 0;
        % Otherwise set the output the output index to zero.
    end
end

% Reformat the output:
if Stripped == 0
    % output an empty array.
    Stripped = char([]);
elseif isempty(Stripped)
    % output an empty array.
    Stripped = char([]);
else
    Stripped = lower(char(transpose(nonzeros(Stripped))));
    % Otherwise remove all zeros and convert ASCII numericals back to
    % lowercase characters.
end
end



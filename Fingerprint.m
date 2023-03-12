function [Finprint] = Fingerprint(Window)
% This function takes a set of windows and calculates a document
% fingerprint using the winowing algorithm. It will return the document
% fingerprint as a 2D array in which each column contains a winnowed value
% and its corresponding position.
%
% Input:            Window - A nxw 2D array (window)
% Output:           Finprint - A two row 2D array (fingerprint)
%
% Author:           KTAN185
% Last Modified:    21/08/22

% Run through each row of the window,
for i = 1:height(Window)
    % Call the RightMin function,
    [Min,Pos] = RightMin(Window(i,:));
    % The top row in the output is the minimum value.
    Finprint(1,i) = Min;
    % The bottom row in the output is the index.
    Finprint(2,i) = (i+Pos-1);
end

% If window has more than one row,
if height(Window) ~= 1
    % Initialise counter.
    j = 1;
    % loop through Finprint to remove duplicate columns.
    for k = 1:length(Finprint)-1
        % If the column right of the current column has the same index,
        if Finprint(2,j) == Finprint(2,j+1)
            % Delete that column.
            Finprint(:,j+1) = [];
            % Subtract 1 from counter.
            j = j-1;
        end
        % Add 1 to the counter.
        j = j+1;
    end
end

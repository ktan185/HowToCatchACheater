function [Window] = Window(WinSize,ONEDArray)
% This function takes a sequence of integer values and creates a 2D array
% of window for a specified window size w.
%
% Inputs:           WinSize - The window size (Positive Integer > 0)
%                   ONEDArray - A 1D array of integer values
% Output:           Window - A 2D array of integer values where each
%                   row is contains integer values WinSize long.
%
% Author:           KTAN185
% Last Modified:    21/08/22

% If the size of the window is greater than the length of the input array,
if WinSize > length(ONEDArray)
    % Return the input array.
    Window = ONEDArray;
end

% Initialise index counter at 1
n = 1;

% Otherwise run through each row with the desired amount of columns,
for i = 1:(length(ONEDArray)-WinSize+1)
    for j = 1:WinSize
        % The value of the current output index is the value of the
        % currnet input index.
        Window(i,j) = ONEDArray(n);
        % Add 1 to the counter.
        n = n+1;
    end
    % Once running through one row, add i to the index counter to start
    % The next row with ONEDArray(i+1).
    n = i+1;
end
end
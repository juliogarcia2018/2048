% Board will be a 4x4 matrix of zeros
clc,clear


Board = zeros(4)

newnumber = randi(10);
dos = 2;
cuatro = 4;

if newnumber <= 5
     Board(randi(numel(Board))) = 2;
elseif newnumber > 5 
    Board(randi(numel(Board))) = 4;
end 

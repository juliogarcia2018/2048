clc,clear


Board = zeros(4);

newnumber = randi(10);

if newnumber <= 5
     Board(randi(numel(Board))) = 2
elseif newnumber > 5 
    Board(randi(numel(Board))) = 4
end 

newnumber2 = randi(10);
if newnumber2 <= 5 
    if Board(randi(numel(Board))) == 0
     Board(randi(numel(Board))) = 2
    else Board(randi(numel(Board))) > 0
        msgbox('I NEED HELP')      % not sure how to get it to re run the if statement until it finds a spot where there is no integer >0 while loop??
    end
elseif newnumber2 > 5 & Board(randi(numel(Board))) == 0
    if Board(randi(numel(Board))) == 0 
    Board(randi(numel(Board))) = 4
    else Board(randi(numel(Board))) >0
        msgbox('I NEED HELP')      % not sure how to get it to re run the if statement until it finds a spot where there is no integer >0 while loop??
    end
end
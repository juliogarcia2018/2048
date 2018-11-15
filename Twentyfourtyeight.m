clc,clear

fprintf('Welcome to 2048!\n')
fprintf('Instructions:\nUse the w a s d keys to add numbers together.\nGet 2048 and you get a perfect score!\nGet anything over 2048 and you lose!\n')

% Boardsecure = 0 makes sure that the while loop keeps happening so that
% the number thats going to go into the martrix ends up in a spot where
% there is no number greater than 0.

Board = zeros(4); % sets up the size of the board
Boardsecure = 0 ; 

while max(max(Board)) < 2048
    
  while Boardsecure == 0 
     
    newnumber = randi(20);   % gives random integer to determine the new number going into the board
    newnumber2 = randi(20);  % gives random integer to determine the new number going into the board
newposition = randi(numel(Board));  % randomly chooses index where the new number will go
newposition2 =randi(numel(Board));  % randomly chooses index where the new number will go

if newnumber <= 5
    if Board(newposition) == 0      % assures that the index that was randomly chosen has a value of 0
        Board(newposition) = 2;  % changes that index value to the newnumber
        Boardsecure =1;             % makes the while loop associated with Boardsecure end
    elseif Board(newposition) > 0   % stops it from overriding a value on the board that has already been created byb the loop
    end
elseif newnumber <= 10
    if Board(newposition) == 0      
        Board(newposition) = 4;     
        Boardsecure = 1;            
    elseif Board(newposition) > 0   
    end
 elseif newnumber <=15
     if Board(newposition) == 0
        Board(newposition) = 10;
        Boardsecure = 1;            
    elseif Board(newposition) > 0 
     end 
    elseif newnumber <= 17
        if Board(newposition) == 0
            Board(newposition) = 50;
            Boardsecure = 1;            d
        elseif Board(newposition) >0
        end
    elseif newnumber <=19
        if Board(newposition) == 0
            Board(newposition) = -10;
            Boardsecure = 1;           
        elseif Board(newposition) >0
        end
    elseif newnumber <= 20
        if Board(newposition) == 0
            Board(newposition) = -40;
            Boardsecure = 1;            
        elseif Board(newposition) >0
        end
end
  end
  
if newnumber2 <= 5
    if Board(newposition2) == 0 
        Board(newposition2) = 10;
        Boardsecure =1;            
    elseif Board(newposition2) > 0
    end
elseif newnumber2 <= 10
    if Board(newposition2) == 0
        Board(newposition2) = 20;
        Boardsecure = 1;            
    elseif Board(newposition2) > 0
    end
elseif newnumber2 <=15
     if Board(newposition2) == 0
        Board(newposition2) = 30;
        Boardsecure = 1;           
    elseif Board(newposition2) > 0 
     end 
    elseif newnumber2 <= 17
        if Board(newposition2) == 0
            Board(newposition2) = -10;
            Boardsecure = 1;           
        elseif Board(newposition2) >0
        end
    elseif newnumber2 <=19
        if Board(newposition2) == 0
            Board(newposition2) = -20;
            Boardsecure = 1;            
        elseif Board(newposition2) >0
        end
    elseif newnumber2 <= 20
        if Board(newposition2) == 0
            Board(newposition2) = -30;
            Boardsecure = 1;            
        elseif Board(newposition2) >0
        end
end


disp(Board);

  
  % the input statement gives the user the options of which button to use
  % and what direction goes with each button.
  % it switches on move and that gives the user 5 different inputs they can
  % give 4 being w,a,s,d, and everything else as the 5th option.
 
 move = input('\n Enter direction: w = Up, a = Left, s = Down, and d = Right ','s');
 
 switch  move 
     case 'w'                  % case w takes the sum of the board and moves it to the first row while making rows 2 through 4 all zero
         x = sum(Board);   
         Board(1,:) = x;  
         Board(2:4,:) = 0; 
         Boardsecure = 0;
         
     case 'a'                  % case a takes the horizontal sum of the board moves it to the first column while making the 2 though 4 column zero
         x = sum(Board,2);
         Board(:,1) = x;
         Board(:,2:4) = 0;
         Boardsecure = 0;
         
     case 's'
         x = sum(Board);      % case s takes the sum of the board and moves it to the fourth row while making rows 1 through 3 all zero
         Board(4,:) = x;
         Board(1:3,:) = 0;
         Boardsecure = 0;
         
     case 'd'                 % case a takes the horizontal sum of the board moves it to the fourth column while making the 1 though 3 column zero
         x = sum(Board,2);
         Board(:,4) = x;
         Board(:,1:3) = 0;
         Boardsecure = 0;
         
     otherwise                                   % gives error message if input is anything other w, a, s, or d
         fprintf('Error, not a valid move!\n')
 end
end

gamesum = max(max(Board));         

if gamesum > 2048
   points = gamesum;             
   fprintf('You lost! Your final score is %.0f \n',gamesum)

elseif gamesum == 2048
    points = 100000;
    fprintf('AMAZING!!! YOU WON!!! Your final score is %.0f!!!!\n',points)
end


  
   ending = 1;
while ending ~= 0
     playagain = menu('Would you like to play again?','YES!','NO'); 
switch playagain
    case 0
        fprintf('That''s not an option!\n')
        ending = 1;
    case 1 
        Twentyfourtyeight
        ending = 0;
    case 2
        fprintf('Thank you for playing!!\n')
        ending = 0;    
end
end

        
exit=1;
while exit==1
    joy=jst;
    fprintf('%d   %d   %d   %d   %d \n',joy);
    if joy(5)==8
        exit=0;
    elseif joy(5)==268435464 
        exit=0;
    end
end

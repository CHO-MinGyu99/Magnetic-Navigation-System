
%Volatage transmit to CSW5550_1
fprintf(s1,['INSTrument:NSELect',num2str(1)]);
fprintf(s1,['VOLTage',num2str(Vh)]);

fprintf(s1,['INSTrument:NSELect',num2str(2)]);
fprintf(s1,['VOLTage',num2str(-Vuy)]);

fprintf(s1,['INSTrument:NSELect',num2str(3)]);
fprintf(s1,['VOLTage',num2str(-Vuz)]);
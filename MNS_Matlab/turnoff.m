%% CSW5550
% Volatage transmit to Power Supply
fprintf(s1,'INSTrument:COUPle ALL');

fprintf(s1,['VOLTage',num2str(0)]);

% Disnable Output source
fprintf(s1,'OUTP 0');

% Set Located control condition
fprintf(s1,'SYST:LOC');

% Close the object, and clear the workspace of the object
fclose(s1);

% Delete the serial object function
delete(s1);
% Clear the serial object function
clear s1;
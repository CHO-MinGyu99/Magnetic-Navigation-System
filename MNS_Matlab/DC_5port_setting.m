%% set the communication parameter for power supply
delete(instrfindall)
s1= serial('COM4'); 
set(s1,'BaudRate',115200,'DataBits',8,'parity','none','stopbits',1,'FlowControl','none'); 

%% Open the communication port
fopen(s1);

%% Set the remote control
fprintf(s1,'SYST:REM');

%% Set the DC mode
fprintf(s1, 'MODE DC');

%% Enable Output source
fprintf(s1,'OUTP 1');
fprintf(s1,'INSTrument:COUPle NONE');
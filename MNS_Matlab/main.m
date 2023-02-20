clc,clear
DC_5port_setting
close all;
mode=0;
Bh=[];
Buy=[];
Buz=[];
g_m=[];
g_g=[];
Hr=[];
omega=0;
Bo=3;
theta=0;
phi=0;
tic;
t=0;
speed=0;
previous_speed=0;
previous_theta=0;
previous_phi=0;
flag=0; %speed flag
flag1=0; %theta flag
flag2=0; %phi flag

exit=0;
while exit==0
    joy=jst;
    
    %------------시스템 시작--------------
    if joy(5)==64
        mode=1;
    elseif joy(5)==268435464
        mode=1;
    end
    %-------------mode=1 시작-------------
      
    if mode==1
        Constants; 
        transmit_DC
        get_speed
        get_theta
        get_phi
        formula
%         get_graph
    end
    
    %-------------시스템 종료--------------
    if joy(5)==8
        exit=1;
    elseif joy(5)==268435464 
        exit=1;
    end
end
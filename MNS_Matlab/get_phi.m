
%범위로 flag설정 (미설정시 연속카운트 발생)
if (joy(3) < -0.9) && (previous_phi > -0.9)
    flag2=1;
elseif (joy(3) > 0.9) && (previous_phi < 0.9) 
    flag2=2;
end
%flag로 환경변경(한번만 카운트하기 위함)
if flag2==1
    phi=phi+pi/12;
elseif flag2==2
    phi=phi-pi/12;
end

previous_phi=joy(3);
joy(1)=0;

flag2=0;
phi;


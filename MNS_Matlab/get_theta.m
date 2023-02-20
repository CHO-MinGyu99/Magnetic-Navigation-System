
%범위로 flag설정 (미설정시 연속카운트 발생)
if (joy(1) < -0.9) && (previous_theta > -0.9)
    flag1=1;
elseif (joy(1) > 0.9) && (previous_theta < 0.9) 
    flag1=2;
end
%flag로 환경변경(한번만 카운트하기 위함)
if flag1==1
    theta=theta+pi/12;
elseif flag1==2
    theta=theta-pi/12;
end

previous_theta=joy(1);
joy(1)=0;

flag1=0;
theta;
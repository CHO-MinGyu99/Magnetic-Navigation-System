
%범위로 flag설정 (미설정시 연속카운트 발생)
if (0.5 > joy(4)) && (previous_speed > 0.5)
    flag=1;
elseif (previous_speed < 0.0) && (0.0 < joy(4))
    flag=2;
end
%flag로 환경변경(한번만 카운트하기 위함)
if flag==1
    speed=speed+1;
elseif flag==2
    speed=speed-1;
end

previous_speed=joy(4);
joy(4)=0;

flag=0;
speed;

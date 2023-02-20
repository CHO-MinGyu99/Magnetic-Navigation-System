


%mode==1일때 그래프 창 띄우기
subplot(2,2,1) %핵심창
    
    grid on;
    quiver3(0,0,0,N(1)/100,N(2)/100,N(3)/100,'r.','ShowArrowHead','on');
    hold on
    quiver3(0,0,0,Bh,Buy,Buz,'b.','AutoScale','off');
    if speed >= 0
        quiver3(Bh,Buy,Buz,H(1)/3,H(2)/3,H(3)/3,'b.','ShowArrowHead','on','AutoScale','off');
    elseif speed < 0
        quiver3(Bh,Buy,Buz,-H(1)/3,-H(2)/3,-H(3)/3,'b.','ShowArrowHead','on','AutoScale','off');
    end
    hold off
    axis([-0.015 0.015 -0.015 0.015 -0.015 0.015])
    
    
subplot(2,2,2) %theta창
    
    compass(0,0,'b')
    hold on;
    quiver(0,0,1*cos(theta),1*sin(theta),'r','linewidth',5,'maxheadsize',5)
    grid on;
    hold off;
    drawnow;
    
subplot(2,2,3) %phi창
   
    compass(0,0,'b')
    hold on;
    quiver(0,0,1*cos(phi),1*sin(phi),'r','linewidth',5,'maxheadsize',5)
    grid on;
    hold off;
    drawnow;
    
subplot(2,2,4) %speed창
    
    quiver(0,0,0,speed,'r');
    grid on;
    axis([-1,1,-10,10]);
    drawnow;
    

    
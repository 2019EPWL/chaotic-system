r=linspace(2,4,500);
initial=linspace(0.3,0.7,50);
trans=200;
k=1;
while k<50
    
    i=1;
    while i<=500
        x(1)=initial(k);
        j=1;
        while j<=(trans-1)
            x(j+1)=r(i)*x(j)*(1-x(j));
            j=j+1;
        end 
        a(i)=x(trans);
        b(i)=x(trans-1);
        c(i)=x(trans-2);
        d(i)=x(trans-3);
        i=i+1;
    end  
    plot(r,a,'.','Color','red');hold on;
    %set(findobj(gca,'Type','line'),'Color','red');
    plot(r,b,'.','Color','blue');hold on;
    %set(findobj(gca,'Type','line'),'Color','blue');
    plot(r,c,'.','Color','yellow');hold on;
    plot(r,d,'.','Color','green');
    k=k+1;
end 
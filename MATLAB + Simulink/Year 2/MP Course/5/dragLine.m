function dragLine(x,y,dx)
    nr=size(x);
    distancex=(x(1,nr(2))-x(1,1))/(nr(2)-1); 
    distantcey=(y(nr(1),1)-y(1,1))/(nr(1)-1);
    for i=1:nr(2)
        line([x(1,i),x(1,i)],[y(1,1)-distantcey,y(nr(1),1)+distantcey]);
    end
    for i=1:nr(1)
        for j=1:nr(2)
            putArrow(x(i,j),y(i,j),sign(dx(i,j))*1,distancex/10,distantcey/10)
        end
    end
end

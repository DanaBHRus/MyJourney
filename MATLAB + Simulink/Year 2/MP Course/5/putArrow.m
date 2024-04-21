function putArrow(x,y,way,lengthx,lengthy)
    if way==1 %sageata in sus
        line([x,x-lengthx],[y,y-lengthy]);
        line([x,x+lengthx],[y,y-lengthy]);
    elseif way==-1 %sageata in jos
        line([x,x-lengthx],[y,y+lengthy]);
        line([x,x+lengthx],[y,y+lengthy]);
    elseif way==0 %orizontala
        line([x,x-lengthx],[y,y]);
        line([x,x+lengthx],[y,y]);     
    end
end

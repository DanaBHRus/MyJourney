function [A,b]=DateSistem(tipex)
switch tipex
    case 'ex1'
        A=[2,0,0,0;-2,1,0,0;-3,2,4,9;5,5,-3,2];
        b=[2,-1,3,9]';
    case 'ex2'
        A=[-4,3,-2,1;0,2,3,1;0,0,-2,3;0,0,0,2];
        b=[-2,6,1,2]';
    case 'ex3'
        A=[2,2,2,4;-1,1,2,-2;3,-2,4,1;1,7,-2,3];
        b=[10,0,6,10]';
end
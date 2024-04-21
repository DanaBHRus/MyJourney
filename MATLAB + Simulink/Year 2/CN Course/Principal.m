clear %stergere date
close all %inchidere figuri
clc %stergere ecran

tipex='ex1';
[A,b]=DateSistem(tipex);

if(triu(A)==A)
fprintf('Solutia sistemului triunghiular superior\n')
[x]=SistTriunSup(A,b);
disp(x') %vector coloana
elseif (tril(A)==A)
fprintf('Solutia sistemului triunghiular inferior\n')
[x]=SistTriunInf(A,b);
disp(x') %vector coloana
else
fprintf('Matrice generala\n')
end
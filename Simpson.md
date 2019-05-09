% Azzan AL Ismaili (831982250)
%HW-19
%MECH 105-Dr. Bechara
%Integrating Experemental data using Simpson 1/3 rule
%%
%Using Simpson as function for this algorithm

function I = Simpson(x,y)

L = length(x);
n = L-1;

if length(x) ~= length(y)
    error('the length aren''t the same for x and y')
end

checking = linspace(x(1),x(L),L);
if isequal(x,checking) == 0
    error('the space of x is not linear')
end

if mod(n,2) == 0
    a = 3;
    I_1 = 0;
    while a <= n-1
        I_1 = I_1 + y(a);
        a = a+2;
    end
    
    b = 2;
    I_2 = 0;
    while b <= n
        I_2 = I_2 + y(b)
        b = b+2;
    end
    
   h = (x(L)-x(1))/(L-1);
   I = h*(y(1)+(4+I_2)'+(2*I_1)+y(L))/3
else
    I_1 = 0
    a = 3
    while a <= n-2
        I_1 = I_1+y(a);
        a = a+2;
    end
    
    b = 2;
    I_2 = 0
    while b <= n-1;
        I_2 = I_2+y(b);
         b = b+2;
end
    
I_3 = (x(L)-x(L-1))*(y(L)+y(L-1))/2;
h = (x(L-1)-x(1))/(n-1);
I = (h*(y(1)+(4*I_2)+(2*I_1)+y(L-1))/3)+I_3;
end
end


        
      

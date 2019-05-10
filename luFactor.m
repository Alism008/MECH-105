%Azzan Al Ismaili(831982250)
%Mech 105
%Dr.Bechara
%HW16-LU Factorization (with Partial Pivoting) 
%%
% Inputs:
% A - coefficient matrix
%%
% Outputs:
% L - lower triangular matrix 
% U - upper triangular matrix 
% P - the pivot matrix
%% 
function [L, U, P] = luFactor(A)
    [m, n] = size(A);
    %using eye function as an Identity matrix for P and L
    L=eye(n);
    P=eye(n);
    U=A;
    for d=1:m-1
        pivot = max(abs(U(d:m,d)))
        for s=d:m
            if(abs(U(s,d))==pivot)
                ind = s
                break;
            end
        end
        U([d,ind],d:m) = U([ind,d],d:m)
        L([d,ind],1:d-1) = L([ind,d],1:d-1)
        P([d,ind],:) = P([ind,d],:)
        for s=d+1:m
            L(s,d) = U(s,d)/U(d,d)
            U(s,d:m) = U(s,d:m)-L(s,d)*U(d,d:m)
        end
        pause;
    end
end
%%
%for getting the answer in command window should click ENTER twice to get
%the desired result for this function
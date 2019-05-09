%Azzan Al Ismaili(831982250)
%Mech 105
%Dr.Bechara
%HW-11-falsePosition
%%
%%For the inputs:
%xl = the lower guess
%xu = the upper guess
%es = the desired relative error
%maxiter = the number of iterations desired
%%
%%For the outputs:
%root = the estimated toor location
%fx = the function evaluated at the root location
%ea = the approximate relative error (%)
%iter = how many iterations were performed
%%
function[root,fx,ea,iter] = falsePosition(func,xl,xu,es,maxiter,varargin)
if nargin<3,error('3 arguments needed'),end
test = func(xl,varargin{:})*func(xu,varargin{:});
if test>0
    error('there is no sign change'),end
if nargin<4|isempty(es), es=0.0001;end
if nargin<5|isempty(maxiter), maxiter=200;end 
iter = 0;
xr = xl;
ea = 100;
%using the falseposition method
while (1)
    xrold = xr;
    xr = xu-((func(xu)*(xl-xu))/(func(xl)-func(xu)));
    iter = iter + 1;
    if xr ~= 0
        ea = abs((xr - xrold)/xr) * 100;
    end
    test = func(xl,varargin{:})*func(xr,varargin{:});
    if test < 0
        xu=xr;
    elseif test > 0 
        xl = xr;
    else ea = 0
    end
    if ea <= es | iter >= maxiter
        break
    end
end
root = xr
fx = func(xr,varargin{:})
end
        
        
     

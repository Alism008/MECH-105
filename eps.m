epsE = 1%the machine epsilon
while(1)
    if 1+epsE <= 1%step 1
        epsE = 2*epsE%step5
        break
    else 
        epsE = epsE/2%step3
    end
end


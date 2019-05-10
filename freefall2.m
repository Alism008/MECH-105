
function nd = days(mo, da, leap)
nd=0,
for m=1:mo-1
    switch m
        case {1, 3, 5, 7, 8, 10, 12}
            nday=31;
        case 2
            nday=28+leap;
    end
    nd=nd+nday
end
nd=nd+da
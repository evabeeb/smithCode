function Gpts = gauss_points(N,h,low_lim)

% determines the Gauss points for a four point quadrature rule.

gpts(1) = (1/2) - sqrt(15+2*sqrt(30))/(2*sqrt(35));
gpts(2) = (1/2) - sqrt(15-2*sqrt(30))/(2*sqrt(35));
gpts(3) = (1/2) + sqrt(15-2*sqrt(30))/(2*sqrt(35));
gpts(4) = (1/2) + sqrt(15+2*sqrt(30))/(2*sqrt(35));

% determines the Gauss points for all N intervals.

for gct = 1:N
    for ell = 1:4
        Gpts((gct-1)*4 + ell,1) = (gct-1)*h + gpts(ell)*h + low_lim;
    end;
end;

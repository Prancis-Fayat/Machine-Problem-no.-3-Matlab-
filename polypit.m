function z = polypit(a)
    z = zeros(10,1);
    x = a(1:size(a,1),1);
    y = a(1:length(a(:,2)),2);
    for i = 1:10
        polyfit(x,y,i);
        z(i) = norm(y - polyval(polyfit(x,y,i), x));
    end 
        [M,I] = min(z)
        b = polyfit(x,y,I);
        fprintf("the polynomial is in degree: %.f, its coefficients are: \n", I)
        disp(b)
    end
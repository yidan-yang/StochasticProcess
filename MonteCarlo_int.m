% Monte-Carlo Integral

n = 10000; % number of uniform random variable
% uniform random variable for both X and Y
X = rand(1,n); 
Y = rand(1,n);
counter = 0;
%  exact value y = exp(-x^2)

for i = 1:n
    if  Y(i) < exp(-X(i)^2)
        counter = counter + 1;
    end
end

% estimate integral
est_int = counter/length(X);

est_int


current_term = 1;
for j = 1:n
    current_term = ((-1)^j)*((2*j+1)*factorial(j))^-1 + current_term;
end
current_term
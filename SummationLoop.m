% Summation of 1-2+3-4...
n = 4;
current_term = 0;
for j = 1:n
    current_term = ((-1)^(j+1))*j + current_term;
end
current_term



n = 4;
current_term = 1;
for j = 1:n
    current_term = ((-1)^j)*((2*j+1)*factorial(j))^-1 + current_term;
end
current_term
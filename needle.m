% Buffon's needle
num_sim = 10000;

line_width = 1;
needle_length = 1;

%d = rand(1);
%theta = (pi/2)*rand(1);


for i = 1:num_sim
    d = rand(1,num_sim);
    theta = (pi/2)*rand(1,num_sim);
    if d(1,i) < needle_length*sin(theta(1,i))
        obs(i,1) = 1;
    else
        obs(i,1) = 0;
    end
end
 
mean(obs(1:3,1))

% compute the estimate for each of num_sim samples
for j = 1:num_sim
    est(j,1) = mean(obs(1:j,1));
end

plot(est)
ylabel('estimate prob')
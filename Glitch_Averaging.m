%% Creating the glitch
A = zeros(10);
A(5,5) = ones(1);
subplot(1,2,1)
mesh(A);
title('Glitch');
%% creating the averaging filter
H = ones(size(A))/length(A)^2;
B = filter2(H,A,'full');
subplot(1,2,2);
mesh(B);
title('Averaged glitch');
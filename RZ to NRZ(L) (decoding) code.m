input_stream = input('Enter Stream');
%input_stream = [1, 0, 1, 1, 0, 1];
n = length(input_stream);
x = [];
y = [];
a = [];
b = [];
c = [];
for i = 1 : n
x=[x i-1 i];
if( input_stream(i) == 0)
y = [y -1 -1];
else
y = [y 1 1];
end
end
for i = 1:n
a = [a i-1 i-0.5 i-0.5 i];
if(y(i * 2) == -1)
b = [b -1 -1 0 0];
else
b = [b 1 1 0 0];
end
end
for i = 1:4*n
 if (b(i)~=0)
 c = [c b(i)];
 end
end
% Create figure window
figure;
% Plot first graph (x, y)
subplot(3, 1, 1);
plot(x, y);
axis([0, n, -2, 2]);
grid on;
title('(x, y)');
% Plot second graph (a, b)
subplot(3, 1, 2);
plot(a, b);
axis([0, n, -2, 2]);
grid on;
title('(a, b)');
% Plot third graph (x, c)
subplot(3, 1, 3);
plot(x, c);
axis([0, n, -2, 2]);
grid on;
title('(x, c)');
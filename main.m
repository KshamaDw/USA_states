load('adj_list.mat');
[N,m] = size(S);
A = zeros(N,N);
names = S{:,1}; 
nbrs = zeros(N,m);
for i=1:1:N
    for j=2:1:m
        if ~ismissing(S{i,j})
            nbrs(i,j) = find(strcmp(S{i,j},names));
        end
    end
    temp = find(nbrs(i,:));
    A(i,nbrs(i,temp)) = 1;
end
G = graph(A,names);
plot(G);
view(-90,-90);
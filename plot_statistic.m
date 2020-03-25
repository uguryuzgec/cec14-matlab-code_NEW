function e = plot_statistic(solution,funcs,runs)
figure
for i=1:funcs
	for j=1:runs
		stat_results(i,j) = solution(i,j).cost;
	end
end
boxplot(stat_results(:,1:end)');
xlabel('Function Number')
ylabel('Cost Value')
e=1;

best_vector=zeros(funcs,1);
worst_vector=zeros(funcs,1);
median_vector=zeros(funcs,1);
mean_vector=zeros(funcs,1);
std_vector=zeros(funcs,1);

disp('Func no    Best    Worst    Median    Mean    Std')
disp('--------------------------------------------------')
for i=1:funcs
   best_vector(i)=min([solution(i,:).cost]); 
   worst_vector(i)=max([solution(i,:).cost]);
   median_vector(i)=median([solution(i,:).cost]);
   mean_vector(i)=mean([solution(i,:).cost]);
   std_vector(i)=std([solution(i,:).cost]);
   X=[num2str(i),best_vector(i),worst_vector(i),median_vector(i),mean_vector(i),std_vector(i)];
   disp(X);
end
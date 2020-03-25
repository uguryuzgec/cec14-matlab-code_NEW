% % Xmin=-100;
% % Xmax=100;
% % D=2;
% 17-22 hibrid cizilmiyor ve 29-30...
% % func_num=13;
% % fhd=str2func('cec14_func');
VRmin=repmat(Xmin,1,D);
VRmax=repmat(Xmax,1,D);
% initialize
        x1 = linspace(VRmin(1), VRmax(1), 101);
        x2 = linspace(VRmin(2), VRmax(2), 101);
        x3 = zeros(length(x1), length(x2));
for i = 1:length(x1)
     for j = 1:length(x2)
        x3(i, j) = feval(fhd,[x1(i);x2(j)],func_num);
     end
end
% build simple grid for axes
        [x1, x2] = meshgrid(x1, x2);
        
        % draw surface
        figure, subplot(121);
        meshc(x1', x2', x3);
        hold on
        surf(x1', x2', x3, 'Linestyle', 'none'); 
       
        axis tight
        grid on
                    
        % tiles, labels, legend
        xlabel('x_1'), ylabel('x_2'), zlabel('F(x_1, x_2)')   
        view(37, 20)
        subplot(122)
        contour(x1', x2', x3);        
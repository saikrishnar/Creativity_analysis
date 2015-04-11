function temp = wm_plotter(expt_number)

folder = strcat('../data/', num2str(expt_number));
addpath folder; 
ab = load('ab.txt');
wm = load('WM.txt');
crt = load('CRT.txt');
l1s = load('L1sparing.txt');
t1_l1 = load('T1_L1.txt');
t1_l3 = load('T1_L3.txt');
t1_l5 = load('T1_L5.txt');
t1_l8 = load('T1_L8.txt');
t2_l1 = load('T2_L1.txt');
t2_l3 = load('T2_L3.txt');
t2_l5 = load('T2_L5.txt');
t2_l8 = load('T2_L8.txt');


lower_bound = 27;
upper_bound = 40;
[mean_t1_low, mean_t2_low, crt_low, wm_low] = compute_statistics(wm,ab,crt,l1s,t1_l1,t1_l3,t1_l5,t1_l8,t2_l1,t2_l3,t2_l5,t2_l8,upper_bound,lower_bound);


lower_bound = 41;
upper_bound = 48;
[mean_t1_medium, mean_t2_medium, crt_medium, wm_medium] = compute_statistics(wm,ab,crt,l1s,t1_l1,t1_l3,t1_l5,t1_l8,t2_l1,t2_l3,t2_l5,t2_l8,upper_bound,lower_bound);


lower_bound = 48;
upper_bound = 60;
[mean_t1_high, mean_t2_high, crt_high, wm_high] = compute_statistics(wm,ab,crt,l1s,t1_l1,t1_l3,t1_l5,t1_l8,t2_l1,t2_l3,t2_l5,t2_l8,upper_bound,lower_bound);

 list = [ 'Lag1'; 'Lag2'; 'Lag3'; 'lag4'];
 subplot(211);plot(mean_t1_low, 'o'); hold on ; plot(mean_t1_low,'k-');hold on;
 plot(mean_t1_medium, '*'); hold on ; plot(mean_t1_medium,'r-'); hold on;
 plot(mean_t1_high, '^'); hold on ; plot(mean_t1_high,'m'); hold off;
 set(gca,'XTick', (1:length(list)), 'XTickLabel', list)
 title('Experiment 1');
 subplot(212);plot(mean_t2_low, 'o'); hold on ; plot(mean_t2_low,'k-');hold on;
 plot(mean_t2_medium, '*'); hold on ; plot(mean_t2_medium,'r-'); hold on;
 plot(mean_t2_high, '^'); hold on ; plot(mean_t2_high,'m'); hold off;
 set(gca,'XTick', (1:length(list)), 'XTickLabel',list)
 
%  pause;
%  
% plot(wm_low, crt_low, '*'); plot(wm_low, crt_low,'k-'); hold on;
%  plot(wm_medium, crt_medium, 'o');  plot(wm_medium, crt_medium,'m'); hold on;
%  plot(wm_high, crt_high, '^');plot(wm_high, crt_high); hold off; 

% crt_low = crt_low(find(crt_low < 100));
% crt_medium = crt_medium(find(crt_medium < 100));
% crt_high = crt_high(find(crt_high < 100));
% 
% crt = [ mean(crt_low) mean(crt_medium) mean(crt_high) ];
% list = [ 'WM_low','WM_medium','WM_high'];
% plot(crt)
% set(gca,'XTick', (1:length(list)), 'XTickLabel',list)
temp = expt_number;

end
 

function [mean_vector_t1, mean_vector_t2, crt , wm] = compute_statistics(wm,ab,crt,l1s,t1_l1,t1_l3,t1_l5,t1_l8,t2_l1,t2_l3,t2_l5,t2_l8,upper_bound,lower_bound)
% This program calculates the required statistics of the creativity tests
% Input:
% wm - working memory
% ab - attention blink
% l1s - Lag1Sparing
% crt - CRT score
% t1 
% t2
% lower_bound
% upper_bound

%Output:




wm_low = wm(find(wm >= lower_bound & wm < upper_bound));
ab_low = ab(find(wm >= lower_bound & wm < upper_bound));
crt_low = crt(find(wm >= lower_bound & wm < upper_bound));
mean_t1_l1_low = mean(t1_l1(find(wm >= lower_bound & wm < upper_bound)));
mean_t1_l3_low = mean(t1_l3(find(wm >= lower_bound & wm < upper_bound)));
mean_t1_l5_low = mean(t1_l5(find(wm >= lower_bound & wm < upper_bound)));
mean_t1_l8_low = mean(t1_l8(find(wm >= lower_bound & wm < upper_bound)));
mean_t2_l1_low = mean(t2_l1(find(wm >= lower_bound & wm < upper_bound)));
mean_t2_l3_low = mean(t2_l3(find(wm >= lower_bound & wm < upper_bound)));
mean_t2_l5_low = mean(t2_l5(find(wm >= lower_bound & wm < upper_bound)));
mean_t2_l8_low = mean(t2_l8(find(wm >= lower_bound & wm < upper_bound)));

% 
% mean_t1_low = [ mean_t1_l1_low mean_t1_l3_low mean_t1_l5_low mean_t1_l8_low];
% mean_t2_low = [ mean_t2_l1_low mean_t2_l3_low mean_t2_l5_low mean_t2_l8_low];
% mean_t1_medium = [ mean_t1_l1_low mean_t1_l3_low mean_t1_l5_low mean_t1_l8_low];
% mean_t2_medium = [ mean_t2_l1_low mean_t2_l3_low mean_t2_l5_low mean_t2_l8_low];

mean_vector_t1 = [ mean_t1_l1_low mean_t1_l3_low mean_t1_l5_low mean_t1_l8_low];
mean_vector_t2 = [ mean_t2_l1_low mean_t2_l3_low mean_t2_l5_low mean_t2_l8_low];

wm = wm_low;
crt = crt_low;



end
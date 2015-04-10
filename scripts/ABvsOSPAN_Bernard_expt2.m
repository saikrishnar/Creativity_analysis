% This program performs analysis on AB vs WM in expt 1

% Clear the workspace
clc; clear all; close all;

% Set the paths and load the files
addpath '../data/expt_2'

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

% Compute the statistics in the data
% Seggregate the data based on the statistics
% Plot the distributions

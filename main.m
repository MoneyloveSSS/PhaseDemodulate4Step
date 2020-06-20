clc;
close all;
clear;
width =1240;  
height =1110;

WaveLengthArr= [15];
nStepPS=4;
xArr = [1:height];

%% Fringes generation
StdFringeSet = GetFringeSet(height, width, nStepPS, WaveLengthArr, 0);

%% Phase demodulation

Phase_fring = PhaseDemodulate4StepPS(StdFringeSet(1,:));
figure,imagesc(Phase_fring);
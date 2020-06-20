function [phaseMap] = PhaseDemodulate4StepPS(FringeSet)
%PHASEDEMODULATE4STEPPS Summary of this function goes here
%   Detailed explanation goes here
    phaseMap = -atan2((FringeSet{2} - FringeSet{4}),(FringeSet{1} - FringeSet{3}));
end

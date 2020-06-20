%% Fringes generation
function [FringeSet] = GetFringeSet(height, width, nStepPS, WaveLengthArr, ObjectHeight)

FringeSet = cell(1,4);  
xArr = [1:height];
yArr = [1:width];

[yGrid, xGrid] = meshgrid(yArr, xArr);

for iWavelength = 1:length(WaveLengthArr)
    WaveLength = WaveLengthArr(iWavelength);
    for  iStepPhaseshift = 1:nStepPS
        Phase = -pi + 2*pi*(xGrid+ObjectHeight)/WaveLength;
        
        Phase = Phase + (iStepPhaseshift-1)* (2*pi/nStepPS) ;

        Fringe2D = cos(Phase);
%         figure, imagesc(Fringe2D); colormap gray; axis image;
        
        FringeSet{iWavelength,iStepPhaseshift} = Fringe2D;
         filename = sprintf('%0.2d_%0.2d.bmp', WaveLength, iStepPhaseshift);
         imwrite(mat2gray(Fringe2D),filename,'bmp');
    end
end


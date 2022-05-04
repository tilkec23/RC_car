
[y,Fs] = audioread('data/seboljkrateksynckratek.wav');
%[Y,AY,phiY]=fnDFT(y);
for i=1:length(y)
    if (y(i, 1) > 0.1) 
        y(i, 1) = 1;
    elseif (y(i, 1) < -0.1)
        y(i, 1) = -1;
    else
        y(i, 1) = 0;
    end
end


yy=round(y);
%fnPlotDFT(Y,AY,phiY);
%[YY,AYY,phiYY]=fnDFT(yy);
%fnPlotDFT(YY,AYY,phiYY);

audiowrite('rtmf.wav',y,Fs);
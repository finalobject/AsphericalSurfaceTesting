subs = getSubArea(0.011);
maxN=0;
for i=1:8
    for j =1:9
        im = subs(:,:,i,j);
        
        tmpMax=max(max(im));
        if (tmpMax>maxN)
            maxN=tmpMax;
        end
        subplot(8,9,j+(i-1)*9);
        imshow(im,[]);
    end
end
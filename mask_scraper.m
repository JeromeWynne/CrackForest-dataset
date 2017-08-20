directory = struct2cell(dir('./groundTruth/*.mat'));
filepaths = directory(1, :)';
for i = 1:size(filepaths, 1)
    file = load(strcat('./groundTruth/', filepaths{i}));
    mask = boolean(file.groundTruth.Segmentation - 1);
    imwrite(mask, strcat('./masks/', filepaths{i}(1:3), '.png'));
end
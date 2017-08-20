directory = struct2cell(dir('./image/*.jpg'));
filepaths = directory(1, :)';
for i = 1:size(filepaths, 1)
    image = imread(strcat('./image/', filepaths{i}));
    imwrite(image, strcat('./images/', filepaths{i}(1:3), '.png'));
end
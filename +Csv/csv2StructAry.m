function StructAry = csv2StructAry(csvPath, fieldNames)

% stringAry = importdata(csvPath, '\n');
% stringAry = stringAry(~cellfun(@isempty, stringAry));
fid = fopen(csvPath);
table = textscan(fid, '%s', 'Delimiter', '\n', 'whitespace', '');
stringAry = table{1};
fclose(fid);

%%
if isempty(fieldNames)
    [fieldNames, stringAry] = iniFieldNames(stringAry);
end

%%
StructAry = [];
structLen = numel(stringAry);
if structLen == 0
    return;
end
StructAry = iniStructAry(structLen, fieldNames);

%%
fieldNamesLen = numel(fieldNames);
for i = 1 : structLen
    csvRow = stringAry{i};
    stringCell = strsplit(csvRow, ',');
    for j = 1 : fieldNamesLen
        fieldName = fieldNames{j};
        StructAry{i, 1}.(fieldName) = stringCell{j};
    end
end

end

%%
function [fieldNames, stringAry] = iniFieldNames(stringAry)

stringAry_1 = stringAry{1};
fieldNames = strsplit(stringAry_1, ',');
stringAry = stringAry(2 : end);

end

%%
function StructAry = iniStructAry(structLen, fieldNames)

StructAry = struct;
fieldNamesLen = numel(fieldNames);
for i = 1 : fieldNamesLen
    fieldName = fieldNames{i};
    StructAry(structLen, 1).(fieldName) = [];
end

end










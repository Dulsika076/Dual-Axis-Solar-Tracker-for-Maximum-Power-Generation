function loadMatToWorkspace(filename)
%LOADMATTOWORKSPACE Load variables from a MAT-file into base workspace
%
%   loadMatToWorkspace('file.mat')

    if nargin < 1
        error('Please provide a MAT-file name.');
    end

    if ~isfile(filename)
        error('File "%s" not found.', filename);
    end

    data = load(filename);
    names = fieldnames(data);

    for k = 1:numel(names)
        assignin('base', names{k}, data.(names{k}));
    end

    fprintf('Loaded %d variables from %s\n', numel(names), filename);
end

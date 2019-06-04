function sDens = single_sample(model)
    % find number of dimensions
    iterations = 1;
    options.nStepsPerPoint = 1; %sampling density 
    options.nPointsReturned = iterations; %number of points returned 
    options.toRound = 1; %whether or not the polytope is rounded 
    options.optPercentage = 0;
    [roundedModel, ~] =  sampleCbModel(model, [], [], options); %outputs model (polytope) and samples 
    dim = size(roundedModel.A, 2);
    sDens = 8 * dim * dim;
end
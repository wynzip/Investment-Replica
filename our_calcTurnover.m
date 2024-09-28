function [abs_turnover_sum] = our_calcTurnover(coeffsWeekly)
% This function computed the weekly turnover of the coefficients
%   Detailed explanation goes here

    
nCoeffs = size(coeffsWeekly,2);
nRows = size(coeffsWeekly,1);

turnover_per_coeff = zeros(nRows-1,nCoeffs);

for i = 2:nRows

        turnover_per_coeff(i-1,:) = abs(coeffsWeekly(i,:) - coeffsWeekly(i-1,:));

end

abs_turnover_sum = turnover_per_coeff;

end
function R_N = complex2realCoeffs2(C_N)
%COMPLEX2REALCOEFFS Convert SH coeffs from the complex to real basis
%   
%   Converts the vector of (N+1)^2xK SH coefficients of K functions on the
%   complex SH base, to the respective ones of the real SH base. For
%   normalisations and conventions used here for each base see the README
%   file.
%
%   C_N:  matrix of (N+1)^2 x K complex SH coefficients
%
%   R_N:  matrix of (N+1)^2 x K real SH coefficients
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Archontis Politis, 10/10/2013, update 12/06/2014
%   archontis.politis@aalto.fi
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% maximum order
N = sqrt(size(C_N, 1)) -1;
T_c2r = complex2realCoeffsMtx2(N);

% convert coefficients
R_N = (T_c2r').' * C_N;

end
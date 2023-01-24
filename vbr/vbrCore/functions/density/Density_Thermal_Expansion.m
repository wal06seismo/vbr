function [Rho] = Density_Thermal_Expansion(Rho, T_K, FracFo)
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Corrects density for thermal expansion at fixed pressure 
    %
    % Parameters
    % ----------
    % Rho : scalar or array 
    %     density in any units 
    % T_K : scalar or array 
    %     temperature in Kelvin
    % FracFo : scalar or array
    %     volume fraction of Forsterite
    %
    % Returns 
    % -------
    % Rho : scalar or array 
    %     density in same units as input density 
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    al_int = thermal_expansion_coefficient(T_K, FracFo);    
    Rho = Rho .* exp(-al_int);

end 

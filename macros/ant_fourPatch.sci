function [D,D_dbi,ohm_a]=ant_fourPatch(diameter)
// Four−Patch Array  
//
// Syntax
//    [D,D_dbi,ohm_a]=ant_fourPatch(diameter)
//
// Parameters
//     diameter : Diameter of patch antennas (lambda)
//     D : Directivity ( unitless )
//     D_dbi : Directivity ( dBi )
//     ohm_a : Beam area ( steradians )
//
// Description
//    Four−Patch Array 
//
// Examples
//    diameter = 0.5;
//    [D,D_dbi,ohm_a]=ant_fourPatch(diameter)
//
// See also
//    
//
// Authors
//     Bytecode    
//           
    
    n = 4 //Number of patch antennas ( lambda)
    
    A_e = n*diameter // Effective aperture ( lambda ˆ2)
    
    D = (4*%pi*A_e) // Directivity ( unitless ) 
    D_dbi = 10*log10(D) // Directivity ( dBi ) 
    ohm_a = (4*%pi)/D //Beam area ( steradians )
    
endfunction

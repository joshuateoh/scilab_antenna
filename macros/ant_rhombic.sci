function [H,phi,l]=ant_rhombic(f,Delta,c)
// Design of rhombic antenna  
//
// Syntax
//    [H,phi,l]=ant_rhombic(f,Delta,c)
//
// Parameters
//     f : frequency (in MHz)
//     Delta : Angle of elevation (in degrees)
//     c : Speed of light (in m/s)
//     H : Rhombic height (in m)
//     phi : Tilt angle (in degrees)
//     l : Wire length (in m)
//
// Description
//    Design of rhombic antenna 
//
// Examples
//    f=20;
//    Delta=10;
//    c=3*10^8;
//    [H,phi,l]=ant_rhombic(f,Delta,c)
//
// See also
//    
//
// Authors
//     Bytecode    
//      
    
    f=f*10^6 // frequency in Hz
    lambda=c/f 
    
    H=lambda/(4*sind(Delta)) // Rhombic height in m 
    phi=90-Delta // t i l t angle in Degrees 
    l=lambda/(2*(cosd(phi)^2)) // wire length in m
    
endfunction

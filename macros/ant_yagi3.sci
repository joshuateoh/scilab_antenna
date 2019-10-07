function [La,Lr,Ld,S]=ant_yagi3(f_MHz,c)
// Design of 3 element yagi uda antenna  
//
// Syntax
//    [La,Lr,Ld,S]=ant_yagi3(f_MHz,c)
//
// Parameters
//     f_MHz : frequency (in MHz)
//     c : Speed of light (in m/s)
//     La : Length of driven element (in feet)
//     Lr : Length of reflector (in feet)
//     Ld : Length of director (in feet)
//     S : Element spacing (in feet)
//
// Description
//    Design of 3 element yagi uda antenna 
//
// Examples
//    f_MHz=172;
//    c=3*10^8;
//    [La,Lr,Ld,S]=ant_yagi3(f_MHz,c)
//
// See also
//    
//
// Authors
//     Bytecode    
//      
    
    lambda=c/f_MHz // wavelength in m 
    
    La=478/f_MHz // length of driven element in feet 
    Lr=492/f_MHz // length of r e f l e c t o r in feet 
    Ld=461.5/f_MHz // length of director in feet 
    S=142/f_MHz // element spacing in feet 
    
endfunction

function [La,Lr,Ld,SL,Sd,d,l]=ant_yagi6(G,f,c)
// Design of 6 element yagi uda antenna  
//
// Syntax
//    [La,Lr,Ld,SL,Sd,d,l]=ant_yagi6(G,f,c)
//
// Parameters
//     G : Required gain (in dB)
//     f : frequency (in MHz)
//     c : Speed of light (in m/s)
//     La : Length of driven element (in m)
//     Lr : Length of reflector (in m)
//     Ld : Length of directors (in m)
//     SL : Spacing between reflector and driver (in m)
//     Sd : Spacing director and driving element (in m)
//     d : Diameter of elements (in m)
//     l : Length of array (in m)
//
// Description
//    Design of 6 element yagi uda antenna 
//
// Examples
//    G=12;
//    f=200;
//    c=3*10^8;
//    [La,Lr,Ld,SL,Sd,d,l]=ant_yagi6(G,f,c)
//
// See also
//    
//
// Authors
//     Bytecode    
//      
    
    f=f*10^6 // frequency in Hz 
    lambda=c/f // wavelength in m 
    
    La=0.46*lambda // length of driven element in m 
    Lr=0.475*lambda // length of r e f l e c t o r in m 
    Ld1=0.44*lambda // length of director1 in m 
    Ld2=0.43*lambda // length of director2 in m 
    Ld3=0.42*lambda // length of director3 in m 
    Ld4=0.40*lambda // length of director4 in m
    Ld = [Ld1;Ld2;Ld3;Ld4]
    SL=0.25*lambda // spacing between r e f l e c t o r and driver in m 
    Sd=0.31*lambda // spacing director and driving element in m 
    d=0.01*lambda // diameter of elements in m 
    l=1.5*lambda // length of array in m 
    
endfunction

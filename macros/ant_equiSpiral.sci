function [r0,R,fi_m,N]=ant_equiSpiral(fU,fL,Exp_ratio,c)
// Design of Equiangular spiral antenna 
//
// Syntax
//    [r0,R,fi_m,N]=ant_equiSpiral(fU,fL,Exp_ratio,c)
//
// Parameters
//     fU : Upper frequency (in MHz)
//     fL : Lower frequency (in MHz)
//     Exp_ratio : Expansion ratio
//     c : Speed of light (in m/s)
//     r0 : Minimum radius (in cm)
//     R : Maximum radius (in cm)
//     fi_m : In degree
//     N : Number of turns
//
// Description
//    Design of Equiangular spiral antenna 
//
// Examples
//    fU=900;
//    fL=450;
//    Exp_ratio=4;
//    c=3*10^8;
//    [r0,R,fi_m,N]=ant_equiSpiral(fU,fL,Exp_ratio,c)
//
// See also
//    
//
// Authors
//     Bytecode    
//           
    
    lambdaU=c/(fU*10^6);//m(Upper wavelength ) 
    lambdaL=c/(fL*10^6);//m(Lower wavelength )
    
    a=log(Exp_ratio)/(2*%pi);//radˆ−1//// rate of spiral 
    Beta=atand(1/a);// degree
    
    r0=lambdaU/4;//meter ////minimum radius
    r0 = r0*100; // cm 
    
    R=lambdaL/4;//meter ////maximum radius
    R = R*100; // cm
    
    fi_m=log(R/r0)/a;// radian 
    fi_m=fi_m*180/%pi;// degree 
    
    N=1/2;// for m =180;// degree  
    
endfunction

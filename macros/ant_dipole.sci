function [l1,l,R]=ant_dipole(tau,sigma,fU,fL,alfa,c)
// Design of log periodic dipole 
//
// Syntax
//    [l1,l,R]=ant_dipole(tau,sigma,fU,fL,alfa,c)
//
// Parameters
//     tau : scale factor 
//     sigma : spacing factor
//     fU : Upper frequency (in MHz)
//     fL : Lower frequency (in MHz)
//     alfa : Angle (in degree)
//     c : Speed of light (in m/s)
//     l1 : Length of shortest element (in m)
//     l : Element lengths array (in m)
//     R : Spacing between elements array (in m)
//
// Description
//    Design of log periodic dipole 
//
// Examples
//    tau=0.895;
//    sigma=0.17;
//    fU=30;
//    fL=10;
//    alfa=18.07;
//    c=3*10^8;
//    [l1,l,R]=ant_dipole(tau,sigma,fU,fL,alfa,c)
//
// See also
//    
//
// Authors
//     Bytecode    
//           

    // tau=0.895;// scale factor 
    // sigma=0.17;// ( spacing factor ) 
    // fU=30;//MHz(Upper frequency ) 
    // fL=10;//MHz(Lower frequency ) 
    // alfa=18.07;// degree ( angle ) 
    // c=3*10^8;//m/s ( Speed of light )
    
    lambdaU=c/(fU*10^6);//m(Upper wavelength ) 
    lambdaL=c/(fL*10^6);//m(Lower wavelength )
    
    l1=lambdaU/2;//m( Length of shortest element )
    l2=l1/tau;
    l3=l2/tau;
    l4=l3/tau;
    l5=l4/tau;
    l6 =l5/tau;
    l7=l6/tau;
    l8=l7/tau;
    l9=l8/tau;
    l10=l9/tau;
    l11=l10/tau;//m( Length of element )
    
    l = [l1;l2;l3;l4;l5;l6;l7;l8;l9;l10;l11];
    
    R1=(l1/2)/tand(alfa/2);//m( Spacing between elements ) 
    R2=R1/tau;
    R3=R2/tau;
    R4=R3/tau;
    R5=R4/tau;
    R6=R5/tau;
    R7=R6/tau;
    R8=R7/tau;
    R9=R8/tau;
    R10=R9/tau;
    R11=R10/tau;//m  
    
    R = [R1;R2;R3;R4;R5;R6;R7;R8;R9;R10;R11]
    
endfunction

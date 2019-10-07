function [n,LBYlambda,HPBW,SLL,alfa]=ant_fire(D,dBYlambda)
// Design of simple End Fire Array  
//
// Syntax
//    [n,LBYlambda,HPBW,SLL,alfa]=ant_fire(D,dBYlambda)
//
// Parameters
//     D : Directivity (in dB)
//     dBYlambda : Spacing/wavelength
//     n : Number of elements
//     LBYlambda : Length/wavelength
//     HPBW : HPBW (in degree)
//     SLL : SLL (in dB)
//     alfa : Progressive phase shift , for theta equals to 0 & 180
//
// Description
//    Design of simple End Fire Array 
//
// Examples
//    D=20;
//    dBYlambda=1/4;
//    [n,LBYlambda,HPBW,SLL,alfa]=ant_fire(D,dBYlambda)
//
// See also
//    
//
// Authors
//     Bytecode    
//           
    
    D=10^(D/10); // unitless ( Directivity )
    
    n=D/4/dBYlambda; //no . of elements 
    LBYlambda=(n-1)*dBYlambda; // ( length /wavelength )
    HPBW=2*acosd(1-1.391/%pi/n/dBYlambda); // degree (HPBW)
    SLL=-13.46; //dB( Side lobe level ) // ??? Not used
    
    Beta_into_lambda=2*%pi;
    // alfa=−Beta∗d;// for theta=0 
    // alfa=Beta∗d;// for theta=180 
    alfa1 = -Beta_into_lambda*dBYlambda; // radian //// for theta=0
    alfa1 = alfa1*180/%pi; // degree ( angle ) 
    
    alfa2 = Beta_into_lambda*dBYlambda; // radian //// for theta=180
    alfa2 = alfa2*180/%pi; // degree ( angle ) 
    alfa = [alfa1 alfa2] 
    
endfunction

function [r,xo,twoao,a1,a2,a11,a12,a02]=ant_broad(dB)
// Broad Side Array design
//
// Syntax
//    [r,xo,twoao,a1,a2,a11,a12,a02]=ant_broad(dB)
//
// Parameters
//     dB : In decibels 
//     r : 10^(dB/20)
//     xo : Point where T4(xo) = r
//     twoao,a1,a2 : Array elements
//     a11 : The ratio of the a1 to a1
//     a12 : The ratio of the a1 to a2
//     a02 : The ratio of the 2ao to a2 
//
// Description
//    Design of a 5 element Broad Side Array which has optimum pattern
//
// Examples
//    [r,xo,twoao,a1,a2,a11,a12,a02]=ant_broad(20)
//
// See also
//    
//
// Authors
//     Bytecode    
//  
    
    n=5;// five element array
     
    m=n-1;// degree of the equation 
    r=10^(dB/20);// because dB=20log ( r )
    a=sqrt(r^2-1); 
    
    A=(r+a)^(1/m); 
    B=(r-a)^(1/m); 
    xo=.5*(A+B);
    
    a2=xo^4;
    a1=4*a2-4*xo^2;
    ao=1+a1-a2;
    twoao = 2*ao
    
    a11=a1/a1;// the ratio of the a1 to a1 
    a12=a1/a2;// the ratio of the a1 to a2 
    a02=2*ao/a2;// the ratio of the 2ao to a2 
     
endfunction

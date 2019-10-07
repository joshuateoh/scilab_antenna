function arr = ant_designSide(SideLobe)
// Design array to achieve optimum pattern
//
// Syntax
//    arr = ant_designSide(SideLobe)
//
// Parameters
//     SideLobe : Side lobe level below main lobe (in dB) 
//     arr : 5 element array [a2; a1; 2ao; a1; a2]
//
// Description
//    Design array to achieve optimum pattern for a 5 element array
//
// Examples
//    arr = ant_designSide(20)
//
// See also
//    
//
// Authors
//     Bytecode    
//       
     
     
    n = 5
    m = n-1 // Tchebyscheff polynomials of degree
    r=10^(SideLobe/20);
    
    
    xo=(1/2)*[(r+sqrt(r^2-1))^(1/m)+(r-sqrt(r^2-1))^(1/m)] 
    
    a2=xo^4;
    a1=4*a2-4*xo^2; 
    ao=1+a1-a2;
    
    arr = [a2; a1; 2*ao; a1; a2] 
    
endfunction

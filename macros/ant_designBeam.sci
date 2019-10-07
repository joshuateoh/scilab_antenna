function arr = ant_designBeam(MainBeamwidth)
// Design array to achieve optimum pattern
//
// Syntax
//    arr = ant_designBeam(MainBeamwidth)
//
// Parameters
//     MainBeamwidth : In degree 
//     arr : 5 element array [a2; a1; 2ao; a1; a2]
//
// Description
//    Design array to achieve optimum pattern for a 5 element array
//
// Examples
//    arr = ant_designBeam(45)
//
// See also
//    
//
// Authors
//     Bytecode    
//   
    
    m = 5
    thetaN = MainBeamwidth/2; // in degree 
    thetaN = thetaN*%pi/180; // in radian
    
    x = cos(%pi/(2*(m-1))); 
    xo = x/cos((%pi/2)*sin(thetaN));
    
    a2 = xo^4; 
    a1 = 4*a2-4*xo^2;
    ao = 1+a1-a2; 
    
    arr = [a2; a1; 2*ao; a1; a2]

endfunction

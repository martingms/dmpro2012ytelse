--	Package pixelutil
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package pixelutil is
    subtype coordinate is natural;
    subtype pixel is natural;
    type pixel_array is array (natural range <>, natural range <>) of pixel;
    
	 function transpose (i          : pixel_array) return pixel_array;

end pixelutil;


package body pixelutil is

    function transpose (i : pixel_array) return pixel_array is
        variable ret : pixel_array(i'range(2), i'range(1));
    begin -- function transpose
        for i1 in i'range(1) loop
            for i2 in i'range(2) loop
                ret(i2, i1) := i(i1, i2);
            end loop; -- i2
        end loop; -- i1
        return ret;
    end function transpose;
 
end pixelutil;

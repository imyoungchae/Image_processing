% Pixel Clamping

function retVal =fn_clamping_pixel(var, method)

if( method == 0)
    if (var>255) retVal = 255;
    elseif (var<0) retVal = 0;
    else retVal = var;
    end
end
   

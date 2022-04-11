function mask=fn_get_sharpening_mask(method) 

if(method==0)
  mask=[1 -2 1;
       -2 5 -2;
        1 -2 1];

elseif(method==1)
  mask=[0 -1 0;
       -1 5 -1;
        0 -1 0];

elseif(method==2)
  mask=[-1 -1 -1;
        -1 9 -1;
        -1 -1 -1];

elseif(method==3)
  mask=[1 1 1;
        1 -7 1;
        1 1 1];
elseif(method==4)
  mask=[0 -1/6 0;
       -1/6 10/6 -1/6;
        0 -1/6 0];
elseif(method==5)
  mask=[0 -1/4 0;
       -1/4 8/4 -1/4;
        0 -1/4 0];

end


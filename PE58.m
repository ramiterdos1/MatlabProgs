function [ output_args ] = PE58(  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

i=9999;
p=0.8;
ct=0;
while p>=0.1
    
        c=0;
        z=spiral(i);
        z=isprime(z);
        
        for j= 1:i
           c=c+z(j,j);
        end
        for j=1:i
            c=c+z(i-j+1,j);
        end
        diag=2*i-mod(i,2);
        p=c/diag;
        if(p<0.10)ct=c;
            
        end
        x=[i p];
        disp(x);
        i=i+2;
end
  output_args=[i-2 ct];      
end


function [ output_args ] = Decode( rcvd_msg,Parity_chk_Matrix )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

output_args=zeros(7,1);
s=zeros(3,1);
s=Parity_chk_Matrix*rcvd_msg;
for i=1:3
    s(i,1)=mod(s(i,1),2);
end
k=1;val=0;
for i=1:3
    val=val+k*s(i,1);
    k=k*2;
end
if val==0 
    disp('No Error!');
    output_args=rcvd_msg;
else
    disp('error at bit-');disp(val);
    if output_args(val)==1
        rcvd_msg(val)=0;
        output_args=rcvd_msg;
    else rcvd_msg(val)=1;
         output_args=rcvd_msg; 
    end
end    
end


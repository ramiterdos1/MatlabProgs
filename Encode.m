function [ output_args ] = Encode( message , GenMatrix)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

output_args=zeros(7,1);
output_args=GenMatrix*message;
for i =1:7   
   output_args(i,1)=mod(output_args(i,1),2);
end    
end


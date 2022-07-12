function out = permute2(obj, n)
%	out = permut(obj, n) returns permutation of obj with n elements.
%	All elements of obj is assumed to be distinct.
%	If n is not given, length(obj) is used instead. 
%	For instance: permute([2 3 4 5], 2) or permute('abcde��, 3).
if nargin == 1, 	n = length(obj);  end
if length(obj) == 1,
	out = obj; 	return
elseif n == 1,
	out = obj(:); 	return;
end
out = [];
for i = 1:length(obj),
	first = obj(i);  remainder = obj;  remainder(i) = [];
	remainder_permute = permute(remainder, n-1);
	loop_out = [first*ones(size(remainder_permute,1),1), remainder_permute];
	out = [out; loop_out];
end

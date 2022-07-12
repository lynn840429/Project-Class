function out = combine(obj,n)

if n==1,
	out=obj(:);
	return;
end

if n == length(obj),
	out = obj(:)';
	return;
end

out = [];

for i = 1:length(obj)-1,
	first = obj(i);
	tail = obj(i+1:length(obj));
	tail_combinat = combine(tail, n-1);
	loop_out = [first*ones(size(tail_combinat,1),1),tail_combinat];
	out = [out;loop_out];
end
	
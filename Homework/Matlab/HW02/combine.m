function show = combine(obj,n)
if n == 1
    show = obj(:);
    return;
 end
if n == length(obj) 	
    show = obj(:)';  	
    return;  
end
show = [];
for i = 1:length(obj)-1
	first = obj(i);  	
    tail = obj(i+1:length(obj));
	tail_combine = combine(tail,n-1);
	loop_out = [first*ones(size(tail_combine,1),1),tail_combine]; 
	show = [show;loop_out];
end

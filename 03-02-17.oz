declare Six = 6
declare Five = 5
declare proc {Foo X R}
	   local Five in
	      Five = 6
	      R = X + Five + Six
	   end
	end

local R in
   {Foo 100 R}
   {Browse R}
end
local Six M in
   Six = 60
   {Foo Six M}
   {Browse M}
end

declare fun {Fact N}
	   if N==0 then 1 else N*{Fact N-1}
	   end
	end
{Browse {Fact 5}}

declare proc {Fact ?F}
	   if N==0 then F=1 else F=N*{Fact N-1}
	   end
	end
local R in
   {Fact 5 R}
   {Browse R}
end

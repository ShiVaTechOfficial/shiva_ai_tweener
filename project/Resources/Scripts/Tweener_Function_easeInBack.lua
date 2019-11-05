--------------------------------------------------------------------------------
--  Function......... : easeInBack
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Tweener.easeInBack ( t, b, c, d, s )
--------------------------------------------------------------------------------
	
	if (s==nil) then s = 1.70158; end
    t=t/d/2
    return c*t*t*((s+1)*t - s) + b;
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
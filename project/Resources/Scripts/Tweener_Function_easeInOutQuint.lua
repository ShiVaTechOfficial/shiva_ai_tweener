--------------------------------------------------------------------------------
--  Function......... : easeInOutQuint
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Tweener.easeInOutQuint ( t, b, c, d )
--------------------------------------------------------------------------------
	
    t = t/d/2
	if (t < 1) then return c/2*t*t*t*t*t + b; end
    t = t - 2
    return c/2*(t*t*t*t*t + 2) + b;
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

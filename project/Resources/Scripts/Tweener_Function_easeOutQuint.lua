--------------------------------------------------------------------------------
--  Function......... : easeOutQuint
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Tweener.easeOutQuint ( t, b, c, d )
--------------------------------------------------------------------------------
	
    t = t/d-1
	return c*(t*t*t*t*t + 1) + b;
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
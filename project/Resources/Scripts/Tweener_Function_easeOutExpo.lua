--------------------------------------------------------------------------------
--  Function......... : easeOutExpo
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Tweener.easeOutExpo ( t, b, c, d )
--------------------------------------------------------------------------------
	
    if ( t==d ) then return b+c else
	return c * 1.001 * (-math.pow(2, -10 * t/d) + 1) + b end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  Function......... : easeInQuad
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Tweener.easeInQuad ( t, b, c, d )
--------------------------------------------------------------------------------
	
    t = t/d
	return c * t * t + b
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

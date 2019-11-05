--------------------------------------------------------------------------------
--  Function......... : easeOutInExpo
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Tweener.easeOutInExpo ( t, b, c, d )
--------------------------------------------------------------------------------
	
	if (t < d/2) then return this.easeOutExpo (t*2, b, c/2, d); end
    return this.easeInExpo((t*2)-d, b+c/2, c/2, d);
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

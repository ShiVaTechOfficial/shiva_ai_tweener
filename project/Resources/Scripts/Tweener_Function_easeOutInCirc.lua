--------------------------------------------------------------------------------
--  Function......... : easeOutInCirc
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Tweener.easeOutInCirc ( t, b, c, d )
--------------------------------------------------------------------------------
	
	if (t < d/2) then return this.easeOutCirc (t*2, b, c/2, d); end 
    return this.easeInCirc((t*2)-d, b+c/2, c/2, d);
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

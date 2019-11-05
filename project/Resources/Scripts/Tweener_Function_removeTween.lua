--------------------------------------------------------------------------------
--  Function......... : removeTween
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Tweener.removeTween ( tween )
--------------------------------------------------------------------------------
	
	table.removeAt ( this.tObject ( ),       tween )
	table.removeAt ( this.tAIModel ( ),      tween )
	table.removeAt ( this.tHandler ( ),      tween )
	table.removeAt ( this.tTime ( ),         tween )
	table.removeAt ( this.tTransition( ),    tween )
	table.removeAt ( this.tChangeNeed ( ),   tween )
	table.removeAt ( this.tDuration ( ),     tween )
	table.removeAt ( this.tInitialValue ( ), tween )
	table.removeAt ( this.tOnComplete ( ),   tween )
	table.removeAt ( this.tOnError ( ),      tween )
	table.removeAt ( this.tOnStart ( ),      tween )
	table.removeAt ( this.tFramed ( ),       tween )
	table.removeAt ( this.tPaused ( ),       tween )
	table.removeAt ( this.tRounded ( ),      tween )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

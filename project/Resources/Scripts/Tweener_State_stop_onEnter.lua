--------------------------------------------------------------------------------
--  State............ : stop
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Tweener.stop_onEnter ( )
--------------------------------------------------------------------------------
	
	table.empty ( this.tObject ( )       )
	table.empty ( this.tAIModel ( )      )
	table.empty ( this.tHandler ( )      )
	table.empty ( this.tTime ( )         )
	table.empty ( this.tTransition( )    )
	table.empty ( this.tChangeNeed ( )   )
	table.empty ( this.tDuration ( )     )
	table.empty ( this.tInitialValue ( ) )
	table.empty ( this.tOnComplete ( )   )
	table.empty ( this.tOnError ( )      )
	table.empty ( this.tOnStart ( )      )
	table.empty ( this.tFramed ( )       )
	table.empty ( this.tPaused ( )       )
	table.empty ( this.tRounded ( )      )
	table.empty ( this.tParam1( )        )
	table.empty ( this.tParam2( )        )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

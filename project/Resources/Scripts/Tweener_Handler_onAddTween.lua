--------------------------------------------------------------------------------
--  Handler.......... : onAddTween
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Tweener.onAddTween ( hObject, sAIModel, sHandler, p1, v1, p2, v2, p3, v3, p4, v4, p5, v5, p6, v6, p7, v7, p8, v8, p9, v9, p10, v10, p11, v11, p12, v12 )
--------------------------------------------------------------------------------

-- README --------------------------------------
-- usage and examples
-- ---------------------------------------------

-- Tweens are smooth transitions between two values (numbers) based on mathematical functions. This AI manages all the math portion of the transitions.
-- This AI "Tweener" should be added to the UserAI stack. You can access it by sending post/sendEvents to this handler (see example below).

-- Parameters:
-- hObject: The object which should be added to the tweener. If hObject is NIL, then the target is the current user.
-- sAIModel: The name of the AIModel that should be added to the tweener.
-- sHandler: The handler within sAIModel that should be tweened. It will receive a single parameter as return value, which corresponds to the current value of the tween.

-- Tween parameters come in pairs: p is the parameter (string), v is the value (number).
-- You can provide as many parameters as you like to this handler, but they have to be formatted in a certain way:
-- p/v1: "init" (value)
-- p/v2: "change" (change from the "init" value)
-- p/v3: "transition" (the name string of the transition according to http://hosted.zeh.com.br/tweener/docs/en-us/misc/transitions.html, corresponds to the function names in this AI)
-- p/v4: "time" (duration of the transition)
-- p/v5: "amplitude" (.. of an elastic transition)
-- p/v6: "period" (.. of an elastic transition)
-- p/v7: "overshoot" (.. of the limit of an elastic transition)
-- The 1..7 order is just a suggestion, arrange and leave out optional parameters as the ease function demands it.

-- Example:
-- user.sendEvent ( this.getUser ( ), "Tweener", "onAddTween", nil, "Fire_Main", "onMoveCameraX", "init", 0, "change", 5, "transition", "easeOutElastic", "time", 2.5 , "amplitude", 7, "period", 0.01 )
-- user.postEvent ( this.getUser ( ), 3, "Tweener", "onAddTween", nil, "Fire_Main", "onMoveCameraY", "init", 5, "change", -4.9, "transition", "easeOutBounce", "time", 2.5 )
--
	
	if ( sAIModel ~= nil and sAIModel ~= "" and sHandler ~= nil and sHandler ~= "" ) then
        
        table.add ( this.tObject ( ),       hObject  )
        table.add ( this.tAIModel ( ),      sAIModel )
        table.add ( this.tHandler ( ),      sHandler )
        table.add ( this.tTime ( ),         0  )
        table.add ( this.tTransition( ),    -1 )
        table.add ( this.tDuration ( ),     0  )
        table.add ( this.tInitialValue ( ), nil )
        table.add ( this.tChangeNeed ( ),   nil )
        table.add ( this.tFramed( ),        false )
        table.add ( this.tPaused ( ),       false )
        table.add ( this.tRounded ( ),      false )
        table.add ( this.tOnComplete ( ),   nil )
        table.add ( this.tOnError ( ),      nil )
        table.add ( this.tOnStart ( ),      nil )
        table.add ( this.tParam1 ( ),       nil )
        table.add ( this.tParam2 ( ),       nil )

        local nTweenId = table.getSize ( this.tObject ( ) ) - 1

        this.setTableProperties ( p1, v1, nTweenId )
        this.setTableProperties ( p2, v2, nTweenId )
        this.setTableProperties ( p3, v3, nTweenId )
        this.setTableProperties ( p4, v4, nTweenId )
        this.setTableProperties ( p5, v5, nTweenId )
        this.setTableProperties ( p6, v6, nTweenId )
        this.setTableProperties ( p7, v7, nTweenId )
        this.setTableProperties ( p8, v8, nTweenId )
        this.setTableProperties ( p9, v9, nTweenId )
        this.setTableProperties ( p10, v10, nTweenId )
        this.setTableProperties ( p11, v11, nTweenId )
        this.setTableProperties ( p12, v12, nTweenId )
        
        this.run ( )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

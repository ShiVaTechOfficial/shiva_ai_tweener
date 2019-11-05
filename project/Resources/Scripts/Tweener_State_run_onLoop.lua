--------------------------------------------------------------------------------
--  State............ : run
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Tweener.run_onLoop ( )
--------------------------------------------------------------------------------
	
	local TweenSize = table.getSize ( this.tAIModel ( ) )
    if (TweenSize > 0 ) then
        local i = 0
        while i < TweenSize do
--        for i=0, TweenSize-1 do
            if ( not table.getAt ( this.tPaused ( ), i ) ) then
                local time = table.getAt ( this.tTime ( ), i ) + application.getLastFrameTime ( )
                local duration = table.getAt ( this.tDuration ( ), i )
                if ( time > duration ) then time = duration end

                local transition = table.getAt ( this.tTransition ( ), i )
                local init       = table.getAt ( this.tInitialValue ( ), i )
                local change     = table.getAt ( this.tChangeNeed ( ), i )
                
                if ( transition ~= -1 and init ~= nil and change ~= nil ) then
                    local result = this.applyTransition ( transition, time, init, change, duration, table.getAt ( this.tParam1( ), i ), table.getAt ( this.tParam2 ( ), i ) )

                    if ( result == nil ) then
                        local onError = table.getAt ( this.tOnError ( ), i )
                        if ( onError ~= nil ) then
                            local target = table.getAt ( this.tObject ( ), i )
                            if ( target == nil ) then
                                user.sendEvent ( this.getUser ( ), table.getAt ( this.tAIModel ( ), i ), onError )
                            else
                                object.sendEvent ( target, table.getAt ( this.tAIModel ( ), i ), onError )
                            end
                        end
                    end

                    local target = table.getAt ( this.tObject ( ), i )
                    if ( target == nil ) then
                        user.sendEvent ( this.getUser ( ), table.getAt ( this.tAIModel ( ), i ), table.getAt ( this.tHandler ( ), i ), result, i )
                    else
                        object.sendEvent ( target, table.getAt ( this.tAIModel ( ), i ), table.getAt ( this.tHandler ( ), i ), result, i )
                    end

                    if ( time >= duration ) then
                        this.removeTween ( i )
                        local onComplete = table.getAt ( this.tOnComplete ( ), i )
                        if ( onError ~= nil ) then
                            local target = table.getAt ( this.tObject ( ), i )
                            if ( target == nil ) then
                                user.sendEvent ( this.getUser ( ), table.getAt ( this.tAIModel ( ), i ), onComplete )
                            else
                                object.sendEvent ( target, table.getAt ( this.tAIModel ( ), i ), onComplete )
                            end
                        end
                        i = i - 1
                        TweenSize = TweenSize - 1
                    else
                        table.setAt ( this.tTime ( ), i, time )
                    end
                else
                    this.removeTween ( i )
                    local onError = table.getAt ( this.tOnError ( ), i )
                    if ( onError ~= nil ) then
                        local target = table.getAt ( this.tObject ( ), i )
                        if ( target == nil ) then
                            user.sendEvent ( this.getUser ( ), table.getAt ( this.tAIModel ( ), i ), onError )
                        else
                            object.sendEvent ( target, table.getAt ( this.tAIModel ( ), i ), onError )
                        end
                    end
                    i = i - 1
                    TweenSize = TweenSize - 1
                end
            end
            i=i+1
        end
    else
        this.stop ( )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  Function......... : setTableProperties
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Tweener.setTableProperties ( param, val, tween )
--------------------------------------------------------------------------------
	
    if ( param ~= nil and val ~= nil and tween ~= nil ) then
        if ( param == "time" ) then
            table.setAt ( this.tDuration ( ), tween, val )
            return true
        elseif ( param == "transition" ) then
            local nTransitionType = this.getTransitionType ( val )
            if ( nTransitionType ~= -1 ) then
                table.setAt ( this.tTransition( ), tween, nTransitionType )
            else
                log.warning ( "Transition name is not recognized: " .. val )
                return false
            end
        elseif ( param == "change" ) then
            table.setAt ( this.tChangeNeed ( ), tween, val )
            return true
        elseif ( param == "init" ) then
            table.setAt ( this.tInitialValue ( ), tween, val )
            return true
        elseif ( param == "usesFrames" ) then
            table.setAt ( this.tFramed ( ), tween, val )
            return true
        elseif ( param == "rounded" ) then
            table.setAt ( this.tRounded ( ), tween, val )
            return true
        elseif ( param == "pause" ) then
            table.setAt ( this.tPaused ( ), tween, val )
            return true
        elseif ( param == "amplitude" ) then
            table.setAt ( this.tParam1( ), tween, val )
            return true
        elseif ( param == "period" ) then
            table.setAt ( this.tParam2( ), tween, val )
            return true
        elseif ( param == "overshoot" ) then
            table.setAt ( this.tParam1( ), tween, val )
            return true
        else
            log.warning ( "Parameters name is not recognized: " .. param )
            return false
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--  Function......... : applyTransition
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Tweener.applyTransition ( transition, t, b, c, d, a, p )
--------------------------------------------------------------------------------
	
    if ( transition == 0 )        then return this.easeNone ( t, b, c, d ) end

    if ( transition == 10 )        then return this.easeInBack    ( t, b, c, d, a ) end
    if ( transition == 20 )        then return this.easeInBounce  ( t, b, c, d ) end
    if ( transition == 30 )        then return this.easeInCirc    ( t, b, c, d ) end
    if ( transition == 40 )        then return this.easeInCubic   ( t, b, c, d ) end
    if ( transition == 50 )        then return this.easeInElastic ( t, b, c, d, a, p ) end
    if ( transition == 60 )        then return this.easeInExpo    ( t, b, c, d ) end
    if ( transition == 70 )        then return this.easeInQuad    ( t, b, c, d ) end
    if ( transition == 80 )        then return this.easeInQuart   ( t, b, c, d ) end
    if ( transition == 90 )        then return this.easeInQuint   ( t, b, c, d ) end
    if ( transition == 100 )       then return this.easeInSine    ( t, b, c, d ) end

    if ( transition == 11 )        then return this.easeOutBack    ( t, b, c, d, a ) end
    if ( transition == 21 )        then return this.easeOutBounce  ( t, b, c, d ) end
    if ( transition == 31 )        then return this.easeOutCirc    ( t, b, c, d ) end
    if ( transition == 41 )        then return this.easeOutCubic   ( t, b, c, d ) end
    if ( transition == 51 )        then return this.easeOutElastic ( t, b, c, d, a, p ) end
    if ( transition == 61 )        then return this.easeOutExpo    ( t, b, c, d ) end
    if ( transition == 71 )        then return this.easeOutQuad    ( t, b, c, d ) end
    if ( transition == 81 )        then return this.easeOutQuart   ( t, b, c, d ) end
    if ( transition == 91 )        then return this.easeOutQuint   ( t, b, c, d ) end
    if ( transition == 101 )       then return this.easeOutSine    ( t, b, c, d ) end

    if ( transition == 12 )        then return this.easeInOutBack    ( t, b, c, d, a ) end
    if ( transition == 22 )        then return this.easeInOutBounce  ( t, b, c, d ) end
    if ( transition == 32 )        then return this.easeInOutCirc    ( t, b, c, d ) end
    if ( transition == 42 )        then return this.easeInOutCubic   ( t, b, c, d ) end
    if ( transition == 52 )        then return this.easeInOutElastic ( t, b, c, d, a, p ) end
    if ( transition == 62 )        then return this.easeInOutExpo    ( t, b, c, d ) end
    if ( transition == 72 )        then return this.easeInOutQuad    ( t, b, c, d ) end
    if ( transition == 82 )        then return this.easeInOutQuart   ( t, b, c, d ) end
    if ( transition == 92 )        then return this.easeInOutQuint   ( t, b, c, d ) end
    if ( transition == 102 )       then return this.easeInOutSine    ( t, b, c, d ) end

    if ( transition == 13 )        then return this.easeOutInBack    ( t, b, c, d, a ) end
    if ( transition == 23 )        then return this.easeOutInBounce  ( t, b, c, d ) end
    if ( transition == 33 )        then return this.easeOutInCirc    ( t, b, c, d ) end
    if ( transition == 43 )        then return this.easeOutInCubic   ( t, b, c, d ) end
    if ( transition == 53 )        then return this.easeOutInElastic ( t, b, c, d, a, p ) end
    if ( transition == 63 )        then return this.easeOutInExpo    ( t, b, c, d ) end
    if ( transition == 73 )        then return this.easeOutInQuad    ( t, b, c, d ) end
    if ( transition == 83 )        then return this.easeOutInQuart   ( t, b, c, d ) end
    if ( transition == 93 )        then return this.easeOutInQuint   ( t, b, c, d ) end
    if ( transition == 103 )       then return this.easeOutInSine    ( t, b, c, d ) end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

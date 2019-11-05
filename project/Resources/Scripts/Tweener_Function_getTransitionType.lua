--------------------------------------------------------------------------------
--  Function......... : getTransitionType
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function Tweener.getTransitionType ( transition )
--------------------------------------------------------------------------------
	
	if ( transition ~= nil ) then
        if ( transition == "easeNone" )        then return 0 end

        if ( transition == "easeInBack" )      then return 10  end
        if ( transition == "easeInBounce" )    then return 20  end
        if ( transition == "easeInCirc" )      then return 30  end
        if ( transition == "easeInCubic" )     then return 40  end
        if ( transition == "easeInElastic" )    then return 50  end
        if ( transition == "easeInExpo" )      then return 60  end
        if ( transition == "easeInQuad" )      then return 70  end
        if ( transition == "easeInQuart" )     then return 80  end
        if ( transition == "easeInQuint" )     then return 90  end
        if ( transition == "easeInSine" )      then return 100 end

        if ( transition == "easeOutBack" )     then return 11  end
        if ( transition == "easeOutBounce" )   then return 21  end
        if ( transition == "easeOutCirc" )     then return 31  end
        if ( transition == "easeOutCubic" )    then return 41  end
        if ( transition == "easeOutElastic" )   then return 51  end
        if ( transition == "easeOutExpo" )     then return 61  end
        if ( transition == "easeOutQuad" )     then return 71  end
        if ( transition == "easeOutQuart" )    then return 81  end
        if ( transition == "easeOutQuint" )    then return 91  end
        if ( transition == "easeOutSine" )     then return 101 end

        if ( transition == "easeInOutBack" )   then return 12  end
        if ( transition == "easeInOutBounce" ) then return 22  end
        if ( transition == "easeInOutCirc" )   then return 32  end
        if ( transition == "easeInOutCubic" )  then return 42  end
        if ( transition == "easeInOutElastic" ) then return 52  end
        if ( transition == "easeInOutExpo" )   then return 62  end
        if ( transition == "easeInOutQuad" )   then return 72  end
        if ( transition == "easeInOutQuart" )  then return 82  end
        if ( transition == "easeInOutQuint" )  then return 92  end
        if ( transition == "easeInOutSine" )   then return 102 end
                                                      
        if ( transition == "easeOutInBack" )   then return 13  end
        if ( transition == "easeOutInBounce" ) then return 23  end
        if ( transition == "easeOutInCirc" )   then return 33  end
        if ( transition == "easeOutInCubic" )  then return 43  end
        if ( transition == "easeOutInElastic" ) then return 53  end
        if ( transition == "easeOutInExpo" )   then return 63  end
        if ( transition == "easeOutInQuad" )   then return 73  end
        if ( transition == "easeOutInQuart" )  then return 83  end
        if ( transition == "easeOutInQuint" )  then return 93  end
        if ( transition == "easeOutInSine" )   then return 103 end
                                                      
        return -1
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------

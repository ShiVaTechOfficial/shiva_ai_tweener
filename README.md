# shiva_ai_tweener
User AI for smooth transitions

## Using tweens
Tweens are smooth transitions between two values (numbers) based on mathematical functions. This AI manages all the math portion of the transitions. This AI "Tweener" should be added to the UserAI stack. You can access it by sending post/sendEvents to the AI's main handler:
```
user.sendEvent ( this.getUser ( ), "Tweener", "onAddTween", nil, "Fire_Main", "onMoveCameraX", "init", 0, "change", 5, "transition", "easeOutElastic", "time", 2.5 , "amplitude", 7, "period", 0.01 )

user.postEvent ( this.getUser ( ), 3, "Tweener", "onAddTween", nil, "Fire_Main", "onMoveCameraY", "init", 5, "change", -4.9, "transition", "easeOutBounce", "time", 2.5 )
```
More help and parameter documentation in the Tweener.onAddTween() handler.

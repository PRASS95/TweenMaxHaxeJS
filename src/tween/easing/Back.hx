package tween.easing;

/**
 * Back
 * @author PRASS
 */
@:native("Back")
extern class Back 
{

	public function new() : Void; 
	
	/**
	 * [static] Eases in with an overshoot, initially dipping below the starting value before accelerating towards the end.
	 * @return
	 */
	static public function	easeIn () : Ease;

	/**
	 * [static] Eases in and out with an overshoot, initially dipping below the starting value before accelerating towards the end, overshooting it and easing out.
	 * @return
	 */
	static public function	easeInOut () : Ease;
	
	/**
	 * [static] Eases out with an overshoot. 
	 * @return
	 */
	static public function	easeOut () : Ease;
	
}
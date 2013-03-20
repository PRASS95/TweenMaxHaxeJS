package tween.easing;

/**
 * Bounce
 * Eases, bouncing either at the beginning (easeIn), the end (easeOut), or both (easeInOut).
 * @author PRASS
 */
@:native("Bounce")
extern class Bounce 
{

	public function new() : Void; 
	
	/**
	 * [static] Bounces slightly at first, then to a greater degree over time, accelerating as the ease progresses.
	 * @return
	 */
	static public function	easeIn () : Ease;

	/**
	 * [static] Bounces in increasing degree towards the center of the ease, then eases out, bouncing to the end (decreasing in degree at the end).
	 * @return
	 */
	static public function	easeInOut () : Ease;
	
	/**
	 * [static] Eases out, bouncing at the end.
	 * @return
	 */
	static public function	easeOut () : Ease;
	
}
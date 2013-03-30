package tween.easing;

/**
 * Strong
 * Provides an easeIn, easeOut, and easeInOut with a power (or strength) of 4 which is identical to the Power4 ease.
 * @author PRASS
 */
@:native("Strong")
extern class Strong 
{

	public function new() : Void; 
	
	/**
	 * 
	 * @return
	 */
	static public function	easeIn () : Ease;

	/**
	 * 
	 * @return
	 */
	static public function	easeInOut () : Ease;
	
	/**
	 * 
	 * @return
	 */
	static public function	easeOut () : Ease;
	
}
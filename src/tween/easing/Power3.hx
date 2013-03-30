package tween.easing;

/**
 * Power3
 * @author PRASS
 */
@:native("Power3")
extern class Power3 
{

	public function new() : Void; 

	/**
	 * [static] Eases in with a power of 3
	 * @return
	 */
	static public function	easeIn () : Ease;

	/**
	 * [static] Eases in and then out with a power of 3
	 * @return
	 */
	static public function	easeInOut () : Ease;
	
	/**
	 * [static] Eases out with a power of 3 
	 * @return
	 */
	static public function	easeOut () : Ease;

	
}

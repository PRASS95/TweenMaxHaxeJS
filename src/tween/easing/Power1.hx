package tween.easing;


/**
 * Power1
 * @author PRASS
 */
@:native("Power1")
extern class Power1 
{

	public function new() : Void; 

	/**
	 * [static] Eases in with a power of 1
	 * @return
	 */
	static public function	easeIn () : Ease;

	/**
	 * [static] Eases in and then out with a power of 1
	 * @return
	 */
	static public function	easeInOut () : Ease;
	
	/**
	 * [static] Eases out with a power of 1 
	 * @return
	 */
	static public function	easeOut () : Ease;

	
}

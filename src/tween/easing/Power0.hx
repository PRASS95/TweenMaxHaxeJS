package tween.easing;

/**
 * Power0
 * @author PRASS
 */
@:native("Power0")
extern class Power0 
{

	public function new() : Void; 

	/**
	 * [static] Eases in with a power of 0
	 * @return
	 */
	static public function	easeIn () : Ease;

	/**
	 * [static] Eases in and then out with a power of 0
	 * @return
	 */
	static public function	easeInOut () : Ease;
	
	/**
	 * [static] Eases out with a power of 0 
	 * @return
	 */
	static public function	easeOut () : Ease;

	
}


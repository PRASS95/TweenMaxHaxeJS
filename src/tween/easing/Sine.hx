package tween.easing;

/**
 * Sine
 * Eases with a relatively low power either at the beginning (easeIn), the end (easeOut), or both (easeInOut).
 * @author PRASS
 */
@:native("Sine")
extern class Sine 
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
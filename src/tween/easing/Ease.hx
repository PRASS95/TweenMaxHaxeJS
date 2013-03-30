package tween.easing;

/**
 * Base class for all easing equations
 * @author PRASS
 */

@:native("Ease")
extern class Ease
{
	/**
	 * Constructor
	 * @param	func
	 * @param	extraParams
	 * @param	type
	 * @param	power
	 */
	public function new(func:Dynamic = null, extraParams:Dynamic = null, type:Float = 0, power:Float = 0) : Void;
	
	/**
	 * Translates the tween's progress ratio into the corresponding ease ratio.
	 * @param	p
	 * @return
	 */
	public function getRatio(p:Float):Float;

	
}
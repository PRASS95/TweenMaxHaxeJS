package tween.easing;

/**
 * SlowMo is a configurable ease that produces a slow-motion effect.
 * @author PRASS
 */
@:native("SlowMo")
extern class SlowMo 
{
	/**
	 * The default ease instance which can be reused many times in various tweens in order to conserve
	 * memory and improve performance slightly compared to creating a new instance each time.
	 */
	static public var ease : SlowMo
	
	/**
	 * Constructor
	 * @param	linearRatio
	 * @param	power
	 * @param	yoyoMode
	 */
	public function new( linearRatio:Float = 0.7, power:Float = 0.7, yoyoMode:Bool = false ) : Void ; 
	
	/**
	 * Permits customization of the ease with various parameters.
	 * @param	linearRatio
	 * @param	power
	 * @param	yoyoMode
	 * @return
	 */
	static public function config(linearRatio:Float = 0.7, power:Float = 0.7, yoyoMode:Bool = false ) : SlowMo; 
	
	/**
	 * Translates the tween's progress ratio into the corresponding ease ratio.
	 * @param	p
	 * @return
	 */
	override public function getRatio( p : Float ) : Float;
	
}
package tween;
import tween.core.Animation;

/**
 * TweenLite for Haxe
 * @author PRASS
 */

@:native("TweenLite") 
extern class TweenLiteHaxe extends Animation 
{
	/**
	 * 
	 * @param	target
	 * @param	duration
	 * @param	vars
	 */
	public function new(target:Dynamic,duration:Float,vars:Dynamic):Void;
  
    /**
     * 
     * @param	delay
     * @param	_callback
     * @param	?params
     * @param	?scope
     * @param	?useFrames
     * @return
     */
    static public function delayedCall(delay:Float, _callback:Dynamic, ?params:Array<Dynamic>, ?scope:Dynamic, ?useFrames:Bool):TweenLiteHaxe;
	
	/**
	 * 
	 * @param	target
	 * @param	duration
	 * @param	vars
	 * @return
	 */
    static public function from(target:Dynamic, duration:Float, vars:Dynamic):TweenLiteHaxe;
	
	/**
	 * 
	 * @param	target
	 * @param	duration
	 * @param	fromVars
	 * @param	toVars
	 * @return
	 */
    static public function fromTo(target:Dynamic, duration:Float, fromVars:Dynamic, toVars:Dynamic):TweenLiteHaxe;
	
	/**
	 * 
	 * @param	target
	 * @return
	 */
    public static function getTweensOf(target:Dynamic):Array<Dynamic>;
	
	/**
	 * 
	 * @return
	 */
    override public function invalidate():Dynamic;
	
	/**
	 * 
	 * @param	func
	 */
    static public function killDelayedCallsTo(func:Dynamic):Void;
	
	/**
	 * 
	 * @param	target
	 * @param	?vars
	 */
    static public function killTweensOf(target:Dynamic, ?vars:Dynamic):Void;
	
	/**
	 * 
	 * @param	target
	 * @param	properties
	 * @return
	 */
    static public function set(target:Dynamic, properties:Dynamic):TweenLiteHaxe;
	
	/**
	 * 
	 * @param	target
	 * @param	duration
	 * @param	properties
	 * @return
	 */
    static public function to(target:Dynamic, duration:Float, properties:Dynamic):TweenLiteHaxe;
	
}
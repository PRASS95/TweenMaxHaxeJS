package tween;

/**
 * TweenMax for Haxe
 * @author PRASS
 * 
 */


@:native("TweenMax") 
extern class TweenMaxHaxe extends TweenLiteHaxe {

	/**
	 * Constructor 
	 * @param	target
	 * @param	duration
	 * @param	properties
	 * @return
	 */
	public function new(target: Dynamic, duration: Float, properties: Dynamic) : Void; 
		
	
	/**
	 * Provides a simple way to call a function after a set amount of time (or frames).
	 * @param	delay
	 * @param	callbackFunc
	 * @param	?params
	 * @param	?scope
	 * @param	?useFrames
	 * @return
	 */
	static public function delayedCall(delay:Float, callbackFunc:Dynamic, ?params:Array<Dynamic>, ?scope:Dynamic, ?useFrames:Bool):TweenMaxHaxe;
	
	
	/**
	 * [static] Static method for creating a TweenMax instance that tweens backwards -
	 * You define the BEGINNING values and the current values are used as the destination values which is great
	 * for doing things like animating objects onto the screen because you can set them up initially the way
	 * you want them to look at the end of the tween and then animate in from elsewhere.
	 * @param	target
	 * @param	duration
	 * @param	properties
	 * @return
	 */
	static public function from (target: Dynamic, duration: Float, properties: Dynamic) : TweenMaxHaxe;
	
	/**
	 * [static] Static method for creating a TweenMax instance that allows you to define both the starting and ending values (as opposed to to() and from()
	 * tweens which are based on the target's current values at one end or the other).
	 * @param	target
	 * @param	duration
	 * @param	fromVars
	 * @param	toVars
	 * @return
	 */
    static public function fromTo(target:Dynamic, duration:Float, fromVars:Dynamic, toVars:Dynamic):TweenMaxHaxe;
	
	/**
	 * [static] Returns an array containing all tweens (and optionally timelines too, excluding the root timelines).
	 * @param	?includeTimelines
	 * @return
	 */
    static public function getAllTweens(?includeTimelines:Bool):Array<Dynamic>;
	
	/**
	 * [static] Returns an array containing all the tweens of a particular target (or group of targets) that have not been released for garbage collection yet
	 * which typically happens within a few seconds after the tween completes.
	 * @param	target
	 * @return
	 */
    static public function getTweensOf(target:Dynamic):Array<Dynamic>;
	
	/**
	 * [override] Clears any initialization data (like starting/ending values in tweens) which can be useful if, for example, you want to restart a tween without reverting to any previously recorded starting values.
	 * @return
	 */
	override public function invalidate():Dynamic;
	
	/**
	 * [static] Reports whether or not a particular object is actively tweening.
	 * @param	target
	 * @return
	 */
	static public function isTweening(target:Dynamic):Bool;
	
		
	
	/**
	 * [static] Kills all tweens and/or delayedCalls/callbacks, and/or timelines, optionally forcing them to completion first.
	 * @param	complete
	 * @param	tweens
	 * @param	delayedCalls
	 * @param	timelines
	 */
	static public function killAll (complete:Bool = false, tweens:Bool = true, delayedCalls:Bool = true, timelines:Bool = true ) : Void;
	
	/**
	 * [static] Kills all tweens of the children of a particular DOM element, optionally forcing them to completion first.
	 * @param	parent
	 * @param	?complete
	 */
	static public function killChildTweensOf(parent:Dynamic, ?complete:Bool):Void;
	
	/**
	 * [static] Immediately kills all of the delayedCalls to a particular function.
	 * @param	func
	 */
	static public function killDelayedCallsTo(func:Dynamic):Void;
	
	/**
	 * [static] Kills all the tweens (or specific tweening properties) of a particular object or the delayedCalls to a particular function.
	 * @param	target
	 * @param	?vars
	 */
	static public function killTweensOf(target:Dynamic, ?vars:Dynamic):Void;
	
	/**
	 * [static] [deprecated] Pauses all tweens and/or delayedCalls/callbacks and/or timelines.
	 * @param	?tweens
	 * @param	?delayedCalls
	 * @param	?timelines
	 */
	static public function pauseAll(?tweens:Bool, delayedCalls:Bool = true, timelines:Bool = true):Void;
	
	
	/**
	 * Gets or sets the tween's progress which is a value between 0 and 1 indicating the position of the virtual playhead (excluding repeats)
	 * where 0 is at the beginning, 0.5 is halfway complete, and 1 is complete.
	 * @param	value
	 * @return
	 */
	public function progress (value:Float) : Dynamic;
	
	/**
	 * Gets or sets the number of times that the tween should repeat after its first iteration.
	 * @param	value
	 * @return
	 */
	public function repeat(value:Int=0):Dynamic;
	
	/**
	 * Gets or sets the amount of time in seconds (or frames for frames-based tweens) between repeats.
	 * @param	value
	 * @return
	 */
	public function repeatDelay(value:Float=0):Dynamic;
	
	
	/**
	 * [static] Immediately sets properties of the target accordingly - essentially a zero-duration to() tween with a more intuitive name.
	 * @param	target
	 * @param	properties
	 * @return
	 */
	static public function set( target:Dynamic, properties:Dynamic) : TweenMaxHaxe;
	
	/**
	 * [static] Tweens an array of targets from a common set of destination values (using the current values as the destination),
	 * but staggers their start times by a specified amount of time, creating an evenly-spaced sequence with a surprisingly small amount of code.
	 * @param	targets
	 * @param	duration
	 * @param	vars
	 * @param	stagger
	 * @param	?onCompleteAll
	 * @param	?onCompleteAllParams
	 * @param	?onCompleteAllScope
	 * @return
	 */
	static public function staggerFrom(targets:Array<Dynamic>, duration:Float, vars:Dynamic, stagger:Float, ?onCompleteAll:Dynamic, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Array<Dynamic>;
	
	static public function staggerFromTo(targets:Array<Dynamic>, duration:Float, fromVars:Dynamic, toVars:Dynamic, stagger:Float, ?onCompleteAll:Dynamic, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Array<Dynamic>;
	
	static public function staggerTo(targets:Array<Dynamic>, duration:Float, vars:Dynamic, stagger:Float, ?onCompleteAll:Dynamic, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Array<Dynamic>;
	
	/**
	 * [override] Gets or sets the local position of the playhead (essentially the current time), not including any repeats or repeatDelays.
	 * @param	value
	 * @param	?suppressEvents
	 * @return
	 */	
	override public function time(value:Float, ?suppressEvents:Bool):Dynamic;
	
	/**
	 * [static] Static method for creating a TweenMax instance that animates to the specified destination values (from the current values).
	 * @param	target
	 * @param	duration
	 * @param	properties
	 * @return
	 */
	static public function to ( target: Dynamic, duration: Float, properties: Dynamic ) : TweenMaxHaxe;
	
		
	/**
	 * [override] Gets or sets the total duration of the tween in seconds (or frames for frames-based tweens) including any repeats or repeatDelays.
	 * @param	value
	 * @return
	 */
	override public function totalDuration(value:Float):Dynamic;
	
	/**
	 * Gets or sets the tween's totalProgress which is a value between 0 and 1 indicating the position of the virtual playhead (including repeats)
	 * where 0 is at the beginning, 0.5 is halfway complete, and 1 is complete.
	 * @param	value
	 * @return
	 */
	public function totalProgress(value:Float):Dynamic;
	
	/**
	 * Updates tweening values on the fly so that they appear to seamlessly change course even if the tween is in-progress.
	 * @param	vars
	 * @param	?resetDuration
	 * @return
	 */
	public function updateTo(vars:Dynamic, ?resetDuration:Bool):Dynamic;
		
	/**
	 * Gets or sets the tween's yoyo state, where true causes the tween to go back and forth, alternating backward and forward on each repeat.
	 * @param	value
	 * @return
	 */
	public function yoyo ( value : Bool = false ) : Dynamic;
		
	
	
	
	
}
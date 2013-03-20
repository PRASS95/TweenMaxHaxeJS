package tween;

import js.Dom;

/**
 * TweenMax for Haxe
 * v0.1
 * @author PRASS
 * 
 */


@:native("TweenMax") 
extern class TweenMaxHaxe implements ArrayAccess<Dom> {

	/**
	 * Constructor 
	 * @param	target
	 * @param	duration
	 * @param	properties
	 * @return
	 */
	public function new(target: Dynamic, duration: Float, properties: Dynamic) : Void; 
	//public function TweenMaxHaxe(target: Dynamic, duration: Float, properties: Dynamic) : TweenMaxHaxe; 
		
	
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
	 * [static] Kills all tweens and/or delayedCalls/callbacks, and/or timelines, optionally forcing them to completion first.
	 * @param	complete
	 * @param	tweens
	 * @param	delayedCalls
	 * @param	timelines
	 */
	static public function killAll (complete:Bool = false, tweens:Bool = true, delayedCalls:Bool = true, timelines:Bool = true ) : Void;
	
	/**
	 * Pauses the instance, optionally jumping to a specific time.
	 * @param	atTime
	 * @param	suppressEvents
	 * @return
	 */
	public function pause(atTime:Dynamic = null, suppressEvents:Bool = true):Dynamic;
	
	/**
	 * Gets or sets the animation's paused state which indicates whether or not the animation is currently paused.
	 * @param	value
	 * @return
	 */	
	public function paused(value:Bool = false):Dynamic;

	
	/**
	 * Begins playing forward, optionally from a specific time (by default playback begins from wherever the playhead currently is).
	 * @param	from
	 * @param	suppressEvents
	 * @return
	 */
	public function play(from:Dynamic = null, suppressEvents:Bool = true):Dynamic;

	
	/**
	 * Gets or sets the tween's progress which is a value between 0 and 1 indicating the position of the virtual playhead (excluding repeats)
	 * where 0 is at the beginning, 0.5 is halfway complete, and 1 is complete.
	 * @param	value
	 * @return
	 */
	public function progress (value:Float) : Dynamic;
	
	/**
	 * Restarts and begins playing forward from the beginning.
	 * @param	includeDelay
	 * @param	suppressEvents
	 * @return
	 */
	public function restart(includeDelay:Bool = false, suppressEvents:Bool = true):Dynamic;
	
	/**
	 * Resumes playing without altering direction (forward or reversed), optionally jumping to a specific time first.
	 * @param	from
	 * @param	suppressEvents
	 * @return
	 */
	public function resume(from:Dynamic = null, suppressEvents:Bool = true):Dynamic;
	
	/**
	 * [static] Immediately sets properties of the target accordingly - essentially a zero-duration to() tween with a more intuitive name.
	 * @param	target
	 * @param	properties
	 * @return
	 */
	static public function set( target:Dynamic, properties:Dynamic) : TweenMaxHaxe;
	
	/**
	 * [static] Static method for creating a TweenMax instance that animates to the specified destination values (from the current values).
	 * @param	target
	 * @param	duration
	 * @param	properties
	 * @return
	 */
	static public function to ( target: Dynamic, duration: Float, properties: Dynamic ) : TweenMaxHaxe;
	
	
	/**
	 * Gets or sets the tween's yoyo state, where true causes the tween to go back and forth, alternating backward and forward on each repeat.
	 * @param	value
	 * @return
	 */
	public function yoyo ( value : Bool = false ) : Dynamic;
		
	
	
	
	
}
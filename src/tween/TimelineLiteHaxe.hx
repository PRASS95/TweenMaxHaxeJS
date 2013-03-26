package tween;

import tween.core.SimpleTimeLine;

/**
 * TimelineLite Haxe
 * @author PRASS
 */

@:native("TimelineLite")
extern class TimelineLiteHaxe extends SimpleTimeLine 
{
	
	/**
	 * Adds a label to the timeline, making it easy to mark important positions/times.
	 * @param	label
	 * @param	position
	 * @return
	 */
	public function addLabel(label:String, position:Dynamic):Dynamic;
	
	/**
	 * Adds a callback to the end of the timeline (or elsewhere using the "position" parameter) - this is a convenience method that accomplishes
	 * exactly the same thing as add( TweenLite.delayedCall(...) ) but with less code
	 * @param	_callback
	 * @param	?params
	 * @param	?scope
	 * @param	?offset
	 * @param	?baseTimeOrLabel
	 * @return
	 */
    public function call(callbackFunc:Dynamic, ?params:Array<Dynamic>, ?scope:Dynamic, ?position:Float):Dynamic;
	
	/**
	 * Empties the timeline of all tweens, timelines, and callbacks (and optionally labels too).
	 * @param	labels
	 * @return
	 */
    public function clear(labels:Bool = true):Dynamic;
	
	/**
	 * Gets the timeline's duration or, if used as a setter, adjusts the timeline's timeScale to fit it within the specified duration.
	 * @param	value
	 * @return
	 */
    override public function duration(value:Float):Dynamic;
	
	/**
	 * Seamlessly transfers all tweens, timelines, and [optionally] delayed calls from the root timeline into a new TimelineLite so that you can perform advanced tasks on a seemingly global basis without affecting tweens/timelines that you create after the export.
	 * @param	?vars
	 * @param	omitDelayedCalls
	 * @return
	 */
    static public function exportRoot(?vars:Dynamic, omitDelayedCalls:Bool = true):TimelineLiteHaxe;
	
    public function from(target:Dynamic, duration:Float, vars:Dynamic, offset:Float, ?baseTimeOrLabel:Dynamic):Dynamic;
    public function fromTo(target:Dynamic, duration:Float, fromVars:Dynamic, toVars:Dynamic, offset:Float, ?baseTimeOrLabel:Dynamic):Dynamic;
	
	/**
	 * Returns an array containing all the tweens and/or timelines nested in this timeline.
	 * @param	nested
	 * @param	?tweens
	 * @param	?timelines
	 * @param	?ignoreBeforeTime
	 * @return
	 */
    public function getChildren(nested:Bool = true, tweens:Bool = true, timelines:Bool = true, ?ignoreBeforeTime:Float):Array<Dynamic>;
	
	/**
	 * Returns the time associated with a particular label.
	 * @param	label
	 * @return
	 */
    public function getLabelTime(label:String):Float;
	
	/**
	 * Returns the tweens of a particular object that are inside this timeline.
	 * @param	target
	 * @param	nested
	 * @return
	 */
    public function getTweensOf(target:Dynamic, nested:Bool = true ):Array<Dynamic>;
	
	/**
	 * Clears any initialization data (like starting/ending values in tweens) which can be useful if, for example,
	 * you want to restart a tween without reverting to any previously recorded starting values.
	 * @return
	 */
	override public function invalidate():Dynamic;
	
	/**
	 * Gets or sets the animation's progress which is a value between 0 and 1 indicating the position of the virtual playhead where 0 is at the beginning,
	 * 0.5 is halfway complete, and 1 is complete.
	 * @param	value
	 * @return
	 */
    public function progress(value:Float):Dynamic;
	
	/**
	 * Removes a tween, timeline, callback, or label (or array of them) from the timeline.
	 * @param	value
	 * @return
	 */
    public function remove(value:Dynamic):Dynamic;
	
	/**
	 * Removes a label from the timeline and returns the time of that label.
	 * @param	label
	 * @return
	 */
    public function removeLabel(label:String):Dynamic;
	
	/**
	 * Jumps to a specific time (or label) without affecting whether or not the instance is paused or reversed.
	 * @param	timeOrLabel
	 * @param	suppressEvents
	 * @return
	 */
    override public function seek(position:Dynamic, suppressEvents:Bool = true ):Dynamic;
	
	/**
	 * Adds a zero-duration tween to the end of the timeline (or elsewhere using the "position" parameter) that sets values immediately
	 * (when the virtual playhead reaches that position on the timeline) - this is a convenience method that accomplishes exactly
	 * the same thing as add( TweenLite.to(target, 0, {...}) ) but with less code.
	 * @param	target
	 * @param	vars
	 * @param	position
	 * @return
	 */
    public function set(target:Dynamic, vars:Dynamic, ?position:Dynamic):Dynamic;
	
	/**
	 * Shifts the startTime of the timeline's children by a certain amount and optionally adjusts labels too.
	 * @param	amount
	 * @param	?adjustLabels
	 * @param	?ignoreBeforeTime
	 * @return
	 */
    public function shiftChildren(amount:Float, ?adjustLabels:Bool, ?ignoreBeforeTime:Float):Dynamic;
	
	/**
	 * Tweens an array of targets to a common set of destination values, but staggers their start times by a specified amount of time, creating an evenly-spaced sequence with a surprisingly small amount of code.
	 * @param	targets
	 * @param	duration
	 * @param	vars
	 * @param	stagger
	 * @param	?position
	 * @param	?onCompleteAll
	 * @param	?onCompleteAllParams
	 * @param	?onCompleteAllScope
	 * @return
	 */
    public function staggerFrom(targets:Array<Dynamic>, duration:Float, vars:Dynamic, stagger:Float, ?position:Dynamic, ?onCompleteAll:Dynamic, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Dynamic;

    public function staggerFromTo(targets:Array<Dynamic>, duration:Float, fromVars:Dynamic, toVars:Dynamic, stagger:Float, ?position:Dynamic, ?onCompleteAll:Dynamic, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Dynamic;

    public function staggerTo(targets:Array<Dynamic>, duration:Float, vars:Dynamic, stagger:Float, ?position:Dynamic, ?onCompleteAll:Dynamic, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Dynamic;

	
	/**
	 * Adds a TweenLite.to() tween to the end of the timeline (or elsewhere using the "position" parameter)
	 * this is a convenience method that accomplishes exactly the same thing as add( TweenLite.to(...) ) but with less code.
	 * @param	target
	 * @param	duration
	 * @param	properties
	 * @param	position
	 * @return
	 */
    public function to(target:Dynamic, duration:Float, properties:Dynamic, position:Dynamic):Dynamic;
	
	/**
	 * Gets the timeline's total duration or, if used as a setter, adjusts the timeline's timeScale to fit it within the specified duration.
	 * @param	value
	 * @return
	 */
    override public function totalDuration(value:Float):Dynamic;
	
	/**
	 * [READ-ONLY] If true, the timeline's timing mode is frames-based instead of seconds.
	 */
    public var usesFrames : Bool;
	
}
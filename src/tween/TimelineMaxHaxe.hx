package tween;

/**
 * TimelineMax Haxe
 * @author PRASS
 */

@:native("TimelineMax")
extern class TimelineMaxHaxe extends TimelineLiteHaxe 
{

	public function new( vars: Dynamic ) : Void ; 
	
	/**
	 * Inserts a callback at a particular position.
	 * @param	_callback
	 * @param	position
	 * @param	?params
	 * @param	?scope
	 * @return
	 */
	public function addCallback(_callback:Dynamic, position:Dynamic, ?params:Array<Dynamic>, ?scope:Dynamic):TimelineMaxHaxe;
	
	/**
	 * Gets the closest label that is at or before the current time, or jumps to a provided label (behavior depends on whether or not you pass a parameter to the method).
	 * @param	?value
	 * @return
	 */
	public function currentLabel(?value:String):Dynamic;
	
	/**
	 * Returns the tweens/timelines that are currently active in the timeline, meaning the timeline's playhead is positioned on the child tween/timeline and the child isn't paused
	 * @param	nested
	 * @param	tweens
	 * @param	?timelines
	 * @return
	 */
	public function getActive(nested:Bool = true, tweens:Bool = true, ?timelines:Bool):Array<Dynamic>;
	
	/**
	 * Returns the next label (if any) that occurs after the time parameter.
	 * @param	time
	 * @return
	 */
	public function getLabelAfter(time:Float):String;
	
	/**
	 * Returns the previous label (if any) that occurs before the time parameter.
	 * @param	time
	 * @return
	 */
	public function getLabelBefore(time:Float):String;
	
	/**
	 * Returns an Array of label objects, each with a "time" and "name" property, in the order that they occur in the timeline.
	 * @return
	 */
	public function getLabelsArray():Array<Dynamic>;
	
	/**
	 * Clears any initialization data (like starting/ending values in tweens) which can be useful if, for example, you want to restart a tween without reverting to any previously recorded starting values.
	 * @return
	 */
    override public function invalidate():Dynamic;
	
	/**
	 * Gets or sets the timeline's progress which is a value between 0 and 1 indicating the position of the virtual playhead (excluding repeats) where 0 is at the beginning, 0.5 is halfway complete, and 1 is complete.
	 * @param	value
	 * @return
	 */
	override public function progress(value:Float):Dynamic;
	
	/**
	 * Removes a callback from a particular position.
	 * @param	_callback
	 * @param	?timeOrLabel
	 * @return
	 */
	public function removeCallback(_callback:Dynamic, ?timeOrLabel:Dynamic):TimelineMaxHaxe;
	
	/**
	 * Gets or sets the number of times that the timeline should repeat after its first iteration.
	 * @param	value
	 * @return
	 */
	public function repeat(value:Float = 0):Dynamic;
	
	/**
	 * Gets or sets the amount of time in seconds (or frames for frames-based timelines) between repeats.
	 * @param	value
	 * @return
	 */
	public function repeatDelay(value:Float = 0):Dynamic;
	
	/**
	 * Gets or sets the local position of the playhead (essentially the current time), not including any repeats or repeatDelays.
	 * @param	value
	 * @param	?suppressEvents
	 * @return
	 */
	override public function time(value:Float, ?suppressEvents:Bool):Dynamic;
	
	/**
	 * Gets or sets the total duration of the timeline in seconds (or frames for frames-based timelines) including any repeats or repeatDelays.
	 * @param	value
	 * @return
	 */
	override public function totalDuration(value:Float):Dynamic;
	
	/**
	 * Gets or sets the timeline's totalProgress which is a value between 0 and 1 indicating the position of the virtual playhead (including repeats) where 0 is at the beginning, 0.5 is halfway complete, and 1 is complete.
	 * @param	value
	 * @return
	 */
	public function totalProgress(value:Float):Dynamic;
	
	/**
	 * Creates a linear tween that essentially scrubs the playhead from a particular time or label to another time or label and then stops.
	 * @param	fromTimeOrLabel
	 * @param	toTimeOrLabel
	 * @param	?vars
	 * @return
	 */
	public function tweenFromTo(fromPosition:Dynamic, toPosition:Dynamic, ?vars:Dynamic):TweenLiteHaxe;
	
	/**
	 * Creates a linear tween that essentially scrubs the playhead to a particular time or label and then stops.
	 * @param	timeOrLabel
	 * @param	?vars
	 * @return
	 */
	public function tweenTo(position:Dynamic, ?vars:Dynamic):TweenLiteHaxe;
	
	/**
	 * Gets or sets the timeline's yoyo state, where true causes the timeline to go back and forth, alternating backward and forward on each repeat.
	 * @param	?value
	 * @return
	 */
	public function yoyo(?value:Bool):Dynamic;
	
}
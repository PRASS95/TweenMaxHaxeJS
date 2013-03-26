package ;

import haxe.Timer;
import js.Lib;
import tween.easing.Back;
import tween.easing.Power2;
import tween.TweenMaxHaxe;


/**
 * TweenMax Haxe JS
 * @author PRASS
 */
 
class Test 
{
	
	private var _target : Dynamic;
	private var _timer 	: Timer;
	private var _tween 	: TweenMaxHaxe;
	
	static function main()
	{
		untyped $(function() { new Test(); } );
	}
	
	public function new () : Void {
		
		_target = untyped $('#target');
		
		_target.on('mouseover', _over);
		_target.on('mouseout', _out);

		_timer = new Timer(1000);
		_timer.run = _onPause;
		
		_tween = new TweenMaxHaxe( _target, 4, { css: { width:500, left:"500px", top:"300px"} , ease: Power2.easeInOut  } );
		_tween.play();
		
	}
	
	private function _over (e) : Void
	{
		TweenMaxHaxe.to( _target, .8, { width:"300px",ease: Back.easeOut} );
	}
	
	private function _out (e) : Void
	{
		TweenMaxHaxe.to( _target, .6, { width:"200px",ease: Back.easeOut } );
	}
	
	private function _onPause() : Void
	{
		_timer.stop();
		_tween.pause();
		
		untyped console.log( _tween.paused() );
		
		_timer = new Timer(1000);
		_timer.run = _onResume;
	}
	
	private function _onResume() : Void
	{
		_timer.stop();
		_tween.resume();
		untyped console.log( _tween.paused() );
	}
	
}
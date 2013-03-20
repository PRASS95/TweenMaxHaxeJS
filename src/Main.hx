package ;

import haxe.Timer;
import js.Lib;
import tween.TweenMaxHaxe;
/**
 * ...
 * @author PRASS
 */

 
 
class Main 
{
	
	private var _timer : Timer;
	private var _tween : TweenMaxHaxe;
	
	static function main() {}
	
	static function start() 
	{
		new Main();
	}
	
	function new () {
		
		
		var tgt = untyped $('#target');
		
		//untyped TweenMax.to( tgt, .8, { css:{width:200, left:"150px", top:"300px"}, delay:.5 } );
		
		//TweenMaxHaxe.to( tgt, .8, { width:"200px" } );
		//TweenMaxHaxe.from( tgt, .8, { css: { width:200, left:"150px", top:"300px" }, delay:.5  } );
		//TweenMaxHaxe.to( tgt, .8, { css:{width:500, left:"500px", top:"400px"}, delay:1.5  } );
		
		_timer = new Timer(1000);
		_timer.run = _onComplete;
		
		_tween = new TweenMaxHaxe( tgt, 4, { css: { width:500, left:"500px", top:"400px" } } );
		//_tween.yoyo(true);
		_tween.play();
		
		
	}
	
	private function _onComplete() : Void
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
		//_tween.resume();
		//_tween.yoyo();
		untyped console.log( _tween.paused() );
	}
	
}
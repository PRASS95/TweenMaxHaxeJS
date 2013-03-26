#TweenMax Haxe JS
==============

## About

###TweenMax Haxe JS is an external wrapper for **TweenMax** and **TweenLite** by *[GreenSock](http://www.greensock.com/gsap-js/)*.

* **Author**: [PRASS](http://twitter.com/PR4SS)
* **Current version**: 0.13	

## Download & Set Up
You just have to [download](https://github.com/PRASS95/TweenMaxHaxeJS/archive/master.zip) and then place the folder *tween* into your *Haxe* project source folder. Next, you have to specify which lib and/or plugins you need in your HTML file:
```
<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenLite.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/plugins/CSSPlugin.min.js"></script>
```	

It's ready to use.
	
## Usage
Syntax is exactly the same than the original **TweeLite** / **TweenMax**. 

```
import tween.TweenMaxHaxe;
import tween.easing.Power2;
 
class Test 
{
	
	private var _target : Dynamic;
	private var _tween 	: TweenMaxHaxe;
	
	public function new () : Void {
		
		_target = untyped $('#target');
		
		_tween = new TweenMaxHaxe( _target, 4, { css: { left:"500px", top:"300px"} , ease: Power2.easeInOut  } );
		_tween.play();
		
		// OR
		
		TweenMaxHaxe( _target, 4, { css: { left:"500px", top:"300px"} , ease: Power2.easeInOut  } );
		
	}
}
```

* **More samples**: [Official Greensock web site](http://www.greensock.com/gsap-js/)
* **Documentation**: [GreenSock JavaScript API Docs](http://api.greensock.com/js/)
	
## Next
- Cover the whole API of TweenMax.

## Licensing

* TweenMax Haxe JS is released in the *public domain*. **No warranty expressed or implied. Use it at your own risk.**
* Please check [Greensock's licensing](http://www.greensock.com/licensing/) before using.

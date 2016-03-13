#TTAnimations
*Just-add-water TTAnimations*

TTAnimations is animate.css version of the ios implementation, will continue to update the new animation. 
`TTAnimations` is a bunch of cool, fun, and cross-browser animations for you to use in your projects. Great for emphasis, home pages, sliders, and general just-add-water-awesomeness.

#Thanks

- [Animate.css](https://github.com/daneden/animate.css)

# Demo

![](https://raw.githubusercontent.com/jiangtiteng/TTAnimations/master/TTAnimations.gif)


##Basic Usage
1. pod 'TTAnimations'
2. import TTAnimations/AnimationHelper.h



3.  select targetView
  ```objective-c
  
    [AnimationHelper playAnimationOn:_targetView animationType:rubberBand];
	


  ```
    custom animation use  AnimationBuilder
    
  ```objective-c
  
	_animationBuilder = [[AnimationBuilder alloc] init];
    [_animationBuilder setDelegate:self];
    [_animationBuilder setDuration:3.0f];
    [_animationBuilder setAnimationType:_animationType];

	[_animationBuilder startOn:_targetLabel completeBlock:^{
            NSLog(@"complete animation");
    }];
  ```
    
4. Finally you need to select one of the following animation:

  * `bounce`
  * `flash`
  * `pulse`
  * `rubberBand`
  * `shake`
  * `headShake`
  * `swing`
  * `tada`
  * `wobble`
  * `jello`
  * `bounceIn`
  * `bounceInDown`
  * `bounceInLeft`
  * `bounceInRight`
  * `bounceInUp`
  * `bounceOut`
  * `bounceOutDown`
  * `bounceOutLeft`
  * `bounceOutRight`
  * `bounceOutUp`
  * `fadeIn`
  * `fadeInDown`
  * `fadeInDownBig`
  * `fadeInLeft`
  * `fadeInLeftBig`
  * `fadeInRight`
  * `fadeInRightBig`
  * `fadeInUp`
  * `fadeInUpBig`
  * `fadeOut`
  * `fadeOutDown`
  * `fadeOutDownBig`
  * `fadeOutLeft`
  * `fadeOutLeftBig`
  * `fadeOutRight`
  * `fadeOutRightBig`
  * `fadeOutUp`
  * `fadeOutUpBig`
  * `flipInX`
  * `flipInY`
  * `flipOutX`
  * `flipOutY`
  * `lightSpeedIn`
  * `lightSpeedOut`
  * `rotateIn`
  * `rotateInDownLeft`
  * `rotateInDownRight`
  * `rotateInUpLeft`
  * `rotateInUpRight`
  * `rotateOut`
  * `rotateOutDownLeft`
  * `rotateOutDownRight`
  * `rotateOutUpLeft`
  * `rotateOutUpRight`
  * `hinge`
  * `rollIn`
  * `rollOut`
  * `zoomIn`
  * `zoomInDown`
  * `zoomInLeft`
  * `zoomInRight`
  * `zoomInUp`
  * `zoomOut`
  * `zoomOutDown`
  * `zoomOutLeft`
  * `zoomOutRight`
  * `zoomOutUp`
  * `slideInDown`
  * `slideInLeft`
  * `slideInRight`
  * `slideInUp`
  * `slideOutDown`
  * `slideOutLeft`
  * `slideOutRight`
  * `slideOutUp`



## License
TTAnimation is licensed under the MIT license. (http://opensource.org/licenses/MIT)

 

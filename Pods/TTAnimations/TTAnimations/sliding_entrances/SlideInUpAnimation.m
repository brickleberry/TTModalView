//
//  SlideInUpAnimation.m
//  Pods
//
//  Created by titengjiang on 16/2/29.
//
//

#import "SlideInUpAnimation.h"

@implementation SlideInUpAnimation


-(void)prepare
{
    
    NSArray<NSNumber *> *keyTimes =  @[@0,@1];
    
    CAKeyframeAnimation * transformAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    transformAnimation.keyTimes = keyTimes;
    
    CATransform3D startTransform = CATransform3DTranslate(_targetView.layer.transform, 0, ViewHeight(_targetView), 0);
    
    transformAnimation.values = @[[NSValue valueWithCATransform3D:startTransform],
                                  [NSValue valueWithCATransform3D:_targetView.layer.transform]
                                  ];
    
    _animationGroup.animations = @[transformAnimation];
    _animationGroup.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
    
}


@end

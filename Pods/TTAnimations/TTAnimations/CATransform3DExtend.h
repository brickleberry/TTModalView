//
//  CATransformSkew.h
//  CATransformTest
//
//  Created by titengjiang on 16/1/19.
//  Copyright © 2016年 sloop. All rights reserved.
//

#ifndef CATransform3DExtend_h
#define CATransform3DExtend_h

#include <stdio.h>
#include <QuartzCore/QuartzCore.h>
#include <QuartzCore/CATransform3D.h>
CATransform3D CATransform3DMakeSkew (CGFloat angleX, CGFloat angleY);
CATransform3D CATransform3DSkewX(CATransform3D t,CGFloat angleX);
CATransform3D CATransform3DSkew (CATransform3D t,CGFloat angleX, CGFloat angleY);
CATransform3D CATransform3DPerspective (CATransform3D t,CGFloat distance);

#endif /* CATransform3DExtend_h */

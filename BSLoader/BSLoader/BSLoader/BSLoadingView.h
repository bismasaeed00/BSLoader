//
//  BSLoadingView.h
//  BSLoader
//
//  Created by Bisma on 08/08/2017.
//  Copyright © 2017 Bisma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Header.h"

@interface BSLoadingView : UIView<CAAnimationDelegate>

-(id)init;
-(id)initWithFrame:(CGRect)frame;
-(id)initWithFrame:(CGRect)frame circleSize:(float)circleSize colorScheme:(BSColorScheme)scheme;

@property (nonatomic,strong) CAShapeLayer *circleLayerOne;
@property (nonatomic,strong) CAShapeLayer *circleLayerTwo;
@property (nonatomic,strong) CAShapeLayer *circleLayerThree;
@property (nonatomic,strong) CAShapeLayer *circleLayerFour;
@property (nonatomic,strong) CAShapeLayer *circleLayerFive;

@end

//
//  BSLoader.m
//  BSLoader
//
//  Created by Bisma on 08/08/2017.
//  Copyright © 2017 Bisma. All rights reserved.
//

#import "BSLoader.h"

@implementation BSLoader{
    UIWindow *alertWindow;
}
static BSLoader* _sharedInstance = nil;
static float circleSize;
static BSColorScheme colorScheme;

+(BSLoader*)sharedInstance
{
    @synchronized([BSLoader class])
    {
        if (!_sharedInstance){
            _sharedInstance = [[self alloc] init];
            circleSize=15;
        }
        
        return _sharedInstance;
    }
    
    return nil;
}
-(BSLoadingView*)showLoader{
    
    [[UIApplication sharedApplication] beginIgnoringInteractionEvents];
    
    int size=95;
    float x=([UIScreen mainScreen].bounds.size.width-size)*0.5;
    
    float y=([UIScreen mainScreen].bounds.size.height-20)*0.5;
    
    CGRect frame=CGRectMake(x, y, size, circleSize+5);
    
    return [self showLoaderInframe:frame];
}
-(BSLoadingView*)showLoaderInframe:(CGRect)frame{
    
    BSLoadingView *loaderView=[[BSLoadingView alloc] initWithFrame:frame circleSize:circleSize colorScheme:colorScheme];
    
    BSLoaderRootViewContoller *rootVC=[[BSLoaderRootViewContoller alloc] initWithNibName:@"BSLoaderRootViewContoller" bundle:[NSBundle mainBundle]];
    [rootVC.view addSubview:loaderView];
    
    if (!alertWindow) {
        
        alertWindow = [[UIWindow alloc] initWithFrame:[UIApplication sharedApplication].keyWindow.bounds];
        alertWindow.windowLevel = UIWindowLevelAlert;
        alertWindow.backgroundColor =[UIColor clearColor];
        
    }
    
    alertWindow.rootViewController = rootVC;
    [alertWindow makeKeyAndVisible];
    
    
    return loaderView;
}
-(void)hideLoader:(BSLoadingView *)loader{
    
    [[UIApplication sharedApplication] endIgnoringInteractionEvents];
    alertWindow.hidden=YES;
    alertWindow=nil;
}

-(void)setDefaultCircleSize:(float)size{
    
    circleSize=size;
    
}
-(void)setColorScheme:(BSColorScheme)scheme{
    
    colorScheme=scheme;
}

@end

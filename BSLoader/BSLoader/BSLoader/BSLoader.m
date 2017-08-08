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

+(BSLoader*)sharedInstance
{
    @synchronized([BSLoader class])
    {
        if (!_sharedInstance)
            _sharedInstance = [[self alloc] init];
        
        return _sharedInstance;
    }
    
    return nil;
}
-(BSLoadingView*)showLoader{
    
    [[UIApplication sharedApplication] beginIgnoringInteractionEvents];
    
    int size=95;
    float x=([UIScreen mainScreen].bounds.size.width-size)*0.5;
    
    float y=([UIScreen mainScreen].bounds.size.height-20)*0.5;
    
    BSLoadingView *loaderView=[[BSLoadingView alloc] initWithFrame:CGRectMake(x, y, size, 20)];
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

@end

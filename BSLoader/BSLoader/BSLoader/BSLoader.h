//
//  BSLoader.h
//  BSLoader
//
//  Created by Bisma on 08/08/2017.
//  Copyright © 2017 Bisma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSLoadingView.h"
#import "BSLoaderRootViewContoller.h"

@interface BSLoader : NSObject
+(BSLoader*)sharedInstance;

#pragma mark - Initializers
-(BSLoadingView*)showLoader;
-(void)hideLoader:(BSLoadingView*)loader;

@end

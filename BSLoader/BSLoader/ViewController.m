//
//  ViewController.m
//  BSLoader
//
//  Created by Bisma on 08/08/2017.
//  Copyright © 2017 Bisma. All rights reserved.
//

#import "ViewController.h"
#import "BSLoader.h"

@interface ViewController ()
- (IBAction)loaderShowPressed:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[BSLoader sharedInstance] setDefaultCircleSize:10];
  //  [[BSLoader sharedInstance] setColorScheme:BSColorSchemeFive];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loaderShowPressed:(id)sender {

    BSLoadingView*loader=[[BSLoader sharedInstance] showLoaderInframe:CGRectMake(100, 100, 200, 200)];
    
    [NSTimer scheduledTimerWithTimeInterval:5.0 repeats:NO block:^(NSTimer * _Nonnull timer) {
        
        [[BSLoader sharedInstance] hideLoader:loader];
    }];

}
@end

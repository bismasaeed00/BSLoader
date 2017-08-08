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
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)loaderShowPressed:(id)sender {

    BSLoadingView*loader=[[BSLoader sharedInstance] showLoader];
    
    [NSTimer scheduledTimerWithTimeInterval:5.0 repeats:NO block:^(NSTimer * _Nonnull timer) {
        
        [[BSLoader sharedInstance] hideLoader:loader];
    }];

}
@end

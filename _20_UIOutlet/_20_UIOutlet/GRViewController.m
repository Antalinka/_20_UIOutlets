//
//  GRViewController.m
//  _20_UIOutlet
//
//  Created by Exo-terminal on 4/13/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import "GRViewController.h"

@interface GRViewController ()

@end

@implementation GRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(CGFloat) randomToZeroToOne {
    return (CGFloat)(arc4random() % 256)/255;
    
}
-(UIColor*) randomColor{
    CGFloat r = [self randomToZeroToOne];
    CGFloat g = [self randomToZeroToOne];
    CGFloat b = [self randomToZeroToOne];

    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}
- (NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAll;
}
-(void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
//    self.testView.backgroundColor = [self randomColor];
//     self.testView2.backgroundColor = [self randomColor];
    for (UIView *test in self.testViews) {
        test.backgroundColor = [self randomColor];
    }
}



@end

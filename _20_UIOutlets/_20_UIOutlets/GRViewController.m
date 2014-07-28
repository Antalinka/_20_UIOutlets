//
//  GRViewController.m
//  _20_UIOutlets
//
//  Created by Exo-terminal on 4/13/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import "GRViewController.h"

@interface GRViewController ()
-(void) rotateСhequersWithArrayOne: (NSMutableArray*) arrayPlayerOne;
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
-(void) changeColor: (UIColor*) color{
    
    for (UIView *view in self.blackView) {
        if ([view isKindOfClass:[UIView class]]) {
                view.backgroundColor = color;
        }
    }
}

-(NSUInteger) supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAll;
}

-(NSMutableArray*) getIndexWithArray: (NSArray*)array{
    
    NSMutableArray* arrayWithIndex = [[NSMutableArray alloc]init];
    
    for (UIView *view in array) {
        
        NSInteger i = [array indexOfObject:view];
        
        [arrayWithIndex addObject: [NSNumber numberWithInteger:i]];
        
    }
    return arrayWithIndex;
}

-(void) rotateСhequersWithArrayOne: (NSMutableArray*) arrayPlayerOne{
    
    for(UIView * obj in self.crayView) {
        
        NSInteger intPlayerOne = arc4random()%([arrayPlayerOne count]-1);
        
        NSNumber* playerOne = [arrayPlayerOne objectAtIndex:intPlayerOne];
        
        intPlayerOne = [playerOne integerValue];
    
        UIView* viewOne = [self.crayView objectAtIndex:intPlayerOne];
        
        CGRect rectOne = viewOne.frame;
        CGRect rectTwo = obj.frame;
        
        obj.frame = CGRectMake(rectOne.origin.x, rectOne.origin.y, rectOne.size.width, rectOne.size.height);
        
        [UIView animateWithDuration:0.5f
                              delay:0.5f
                            options:UIViewAnimationOptionCurveEaseIn
                         animations:^
         {
             viewOne.frame = CGRectMake(rectTwo.origin.x, rectTwo.origin.y, rectTwo.size.width, rectTwo.size.height);
             
         } completion:^(BOOL finished) {
         }];
        
        [self.mainView insertSubview:obj belowSubview:[self.mainView.subviews objectAtIndex:intPlayerOne]];
        [self.mainView bringSubviewToFront:obj];
    }
}

-(void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    
    UIColor* color = [[UIColor alloc]init];
    
    switch (toInterfaceOrientation) {
        case UIInterfaceOrientationLandscapeRight:             color = [UIColor colorWithRed:0.22 green:0.04 blue: 0.08 alpha:1.1];
            break;
        case UIInterfaceOrientationPortrait:                   color = [UIColor blackColor];
            break;
        case UIInterfaceOrientationLandscapeLeft:              color = [UIColor colorWithRed:0.62 green:0.87 blue:0.89 alpha:1];
            break;
        case UIInterfaceOrientationPortraitUpsideDown:         color = [UIColor colorWithRed:0.37 green:0.72 blue:0.75 alpha:1];
    }
    [self changeColor:color];
    
    NSMutableArray * subViewArray = [self getIndexWithArray:self.crayView];
    
    [self performSelector:@selector(rotateСhequersWithArrayOne:) withObject:subViewArray afterDelay:1];
}
@end

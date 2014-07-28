//
//  GRViewController.h
//  _20_UIOutlet
//
//  Created by Exo-terminal on 4/13/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GRViewController : UIViewController

//@property (weak, nonatomic)IBOutlet UIView* testView;
//@property (weak, nonatomic) IBOutlet UIView *testView2;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *testViews;

@end

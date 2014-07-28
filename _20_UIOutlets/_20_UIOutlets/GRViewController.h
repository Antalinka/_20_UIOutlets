//
//  GRViewController.h
//  _20_UIOutlets
//
//  Created by Exo-terminal on 4/13/14.
//  Copyright (c) 2014 Evgenia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GRViewController : UIViewController
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *blackView;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *crayView;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *whiteView;
@property (weak, nonatomic) IBOutlet UIView *mainView;

@end

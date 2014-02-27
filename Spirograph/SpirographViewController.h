//
//  SpirographViewController.h
//  Spirograph
//
//  Created by Steve Chakif on 2/26/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SpirographView.h"
#import "HarmonigraphView.h"

@interface SpirographViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet HarmonigraphView *harmonigraphView;
@property (weak, nonatomic) IBOutlet SpirographView *spirographView;
@property (weak, nonatomic) IBOutlet UISlider *lSlider;
@property (weak, nonatomic) IBOutlet UISlider *kSlider;
@property (weak, nonatomic) IBOutlet UITextField *numberOfStepsTextField;
@property (weak, nonatomic) IBOutlet UITextField *stepSizeTextField;


- (IBAction)redraw:(id)sender;


@end

//
//  SpirographViewController.m
//  Spirograph
//
//  Created by Steve Chakif on 2/26/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import "SpirographViewController.h"
#import "SpirographView.h"

@interface SpirographViewController ()

@end

@implementation SpirographViewController
@synthesize scrollView;
@synthesize spirographView;
@synthesize harmonigraphView;

- (void) viewDidLayoutSubviews {
    
    scrollView.contentSize = CGSizeMake(560, 280);
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.spirographView.l = 0.45;
    self.spirographView.k = 0.54;
    self.spirographView.numberOfSteps = 2000;
    self.spirographView.stepSize = 0.4;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardAppeared:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWentAway:) name:UIKeyboardWillHideNotification object:nil];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)keyboardAppeared:(NSNotification *)note {
    CGSize keyboardSize = [[[note userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
    CGRect newFrame = self.view.frame;
    newFrame.origin.y -= keyboardSize.height;
    self.view.frame = newFrame;
}

- (void)keyboardWentAway:(NSNotification *)note {
    CGSize keyboardSize = [[[note userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    CGRect newFrame = self.view.frame;
    newFrame.origin.y += keyboardSize.height;
    self.view.frame = newFrame;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (IBAction)redraw:(id)sender {
    int kIntVal = self.kSlider.value * 10;
    self.spirographView.k = kIntVal/10.0;
    int lIntVal = self.lSlider.value * 10;
    self.spirographView.l = lIntVal/10.0;
    self.spirographView.numberOfSteps = [self.numberOfStepsTextField.text intValue];
    self.spirographView.stepSize = [self.stepSizeTextField.text floatValue];
    
    [self.spirographView setNeedsDisplay];
}
@end

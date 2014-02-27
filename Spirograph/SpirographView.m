//
//  SpirographView.m
//  Spirograph
//
//  Created by Steve Chakif on 2/26/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import "SpirographView.h"

@implementation SpirographView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code

    UIBezierPath *bz = [[UIBezierPath alloc] init];
    CGFloat R = 120.0;
    CGFloat t = 0;
    
    CGFloat x,y;
    
    x = 140 + (R * ((1.0 - self.k)*cos(t) + self.l * self.k * cos(((1.0 - self.k)/self.k) * t)));
    y = 140 + (R * ((1.0 - self.k)*sin(t) - self.l * self.k * sin(((1.0 - self.k)/self.k) * t)));
    
    [bz moveToPoint:CGPointMake(x, y)];
    
    for (t=0; t< self.numberOfSteps * self.stepSize; t=t+self.stepSize) {
        x = 140 + (R * ((1.0 - self.k)*cos(t) + self.l * self.k * cos(((1.0 - self.k)/self.k) * t)));
        y = 140 + (R * ((1.0 - self.k)*sin(t) - self.l * self.k * sin(((1.0 - self.k)/self.k) * t)));
        CGPoint p = CGPointMake(x, y);
        [bz addLineToPoint:p];
    }
    [bz stroke];


}


@end

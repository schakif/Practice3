//
//  SpirographView.h
//  Spirograph
//
//  Created by Steve Chakif on 2/26/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpirographView : UIView

@property (nonatomic) CGFloat l;
@property (nonatomic) CGFloat k;
@property (nonatomic) CGFloat stepSize;
@property (nonatomic) NSUInteger numberOfSteps;

@end

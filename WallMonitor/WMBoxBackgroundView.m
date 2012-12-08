//
//  WMBoxBackgroundView.m
//  WallMonitor
//
//  Created by Joachim Bengtsson on 2012-12-08.
//  Copyright (c) 2012 Joachim Bengtsson. All rights reserved.
//

#import "WMBoxBackgroundView.h"
#import <QuartzCore/QuartzCore.h>

@implementation WMBoxBackgroundView

- (id)initWithFrame:(CGRect)frame
{
    return [[super initWithFrame:frame] commonInit];
}
- (id)initWithCoder:(NSCoder *)aDecoder
{
    return [[super initWithCoder:aDecoder] commonInit];
}
- (id)commonInit
{
    self.layer.cornerRadius = 8.0;
    self.layer.backgroundColor = [UIColor colorWithWhite:0.000 alpha:0.730].CGColor;
    self.layer.borderColor = [UIColor colorWithWhite:0.000 alpha:0.810].CGColor;
    self.layer.borderWidth = 2.0;
    
    return self;
}

@end

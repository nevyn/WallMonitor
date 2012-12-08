//
//  WMMainViewController.m
//  WallMonitor
//
//  Created by Joachim Bengtsson on 2012-12-08.
//  Copyright (c) 2012 Joachim Bengtsson. All rights reserved.
//

#import "WMMainViewController.h"
#import "WMBackgroundView.h"

@implementation WMMainViewController
- (void)viewDidLoad
{
    WMBackgroundView *bg = [WMBackgroundView new];
    bg.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    bg.frame = self.view.bounds;
    [self.view insertSubview:bg atIndex:0];
}
@end

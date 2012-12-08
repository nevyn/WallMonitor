//
//  WMBackgroundView.m
//  WallMonitor
//
//  Created by Joachim Bengtsson on 2012-12-08.
//  Copyright (c) 2012 Joachim Bengtsson. All rights reserved.
//

#import "WMBackgroundView.h"
#import <QuartzCore/QuartzCore.h>

// http://www.youtube.com/watch?v=A4C-sQRDIVg
// http://www.youtube.com/watch?v=UtOM_FsZBrM

static double frand() { return random()/(float)LONG_MAX; }

@implementation WMBackgroundView {
    CAGradientLayer *_gradient;
    NSArray *_curves;
}
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
    _gradient = [CAGradientLayer new];
    
    _gradient.colors = @[
        (id)[UIColor colorWithRed:0.023 green:0.118 blue:0.035 alpha:1.000].CGColor,
        (id)[UIColor colorWithRed:0.126 green:0.683 blue:0.431 alpha:1.000].CGColor
    ];
    _gradient.startPoint = CGPointMake(0, 1);
    _gradient.endPoint = CGPointMake(0, 0);
    
    [self.layer addSublayer:_gradient];
    /*
    CGFloat w = self.frame.size.width * 2;
    CGFloat mid = self.frame.size.height / 2;
    
    NSMutableArray *curves = [NSMutableArray new];
    for(int i = 0; i < 4; i++) {
        CAShapeLayer *curve = [CAShapeLayer new];
        CGFloat h = frand() * 200;
        
        CGRect r = CGRectMake(0, mid-h/2, w, h);
        curve.frame = r;
        
        UIBezierPath *bzp = [UIBezierPath new];
        [bzp moveToPoint:CGPointMake(0, mid+)]
        for(int i = 0, c = random()%10+1; i < c; i++) {
            float x = (i/(float)c) * w;
            [bzp addCurveToPoint:<#(CGPoint)#> controlPoint1:<#(CGPoint)#> controlPoint2:<#(CGPoint)#>];
        }
        
        
        [self.layer addSublayer:curve];
        [curves addObject:curve];
    }
    _curves = [curves copy];
    */
    
    return self;
}
- (void)layoutSubviews
{
    _gradient.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
}
@end

//
//  Draw2D.m
//  CoreGraphicsLearn
//
//  Created by wangjiay on 15/5/15.
//  Copyright (c) 2015 wangjiay. All rights reserved.
//

#import "Draw2D.h"

@implementation Draw2D

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
	CGContextFillRect(context, CGRectMake(0, 0, 400, 500));
	
	CGContextSetLineWidth(context, 20.0);
	
	CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
	
	CGFloat components[] = {0.0, 0.0, 1.0, 0.1};
	
	CGColorRef color = CGColorCreate(colorspace, components);
	
	CGContextSetStrokeColorWithColor(context, color);
	
	CGContextMoveToPoint(context, 0, 0);
	CGContextAddLineToPoint(context, 300, 400);
	
	CGContextStrokePath(context);
	
	CGContextMoveToPoint(context, 100, 100);
	CGContextAddLineToPoint(context, 150, 150);
	CGContextAddLineToPoint(context, 100, 200);
	CGContextAddLineToPoint(context, 50, 150);
	CGContextAddLineToPoint(context, 100, 100);
	
	CGContextStrokePath(context);

	CGColorSpaceRelease(colorspace);
	CGColorRelease(color);
}

@end

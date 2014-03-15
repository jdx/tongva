//
//  NewHillAlert.m
//  tongva
//
//  Created by Jeff Dickey on 3/15/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "NewHillAlert.h"

@implementation NewHillAlert

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(8.0, 0.0, 200.0, 50.0)];
        self.backgroundColor = [UIColor orangeColor];
        _label.textColor = UIColor.blackColor;
        [self addSubview:_label];
    }
    return self;
}

@end

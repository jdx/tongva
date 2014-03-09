
//
//  HillCell.m
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "HillCell.h"

@implementation HillCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = UIColor.whiteColor;
        self.label = [[UILabel alloc] initWithFrame:self.bounds];
        self.label.font = [self.label.font fontWithSize:25];
        self.label.textColor = [UIColor blackColor];
        [self addSubview:self.label];
    }
    return self;
}

@end

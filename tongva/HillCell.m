//
//  HillCell.m
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "HillCell.h"

@interface HillCell() {
    Hill *_hill;
}

@end

@implementation HillCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (Hill *)hill
{
    return _hill;
}

- (void)setHill:(Hill *)hill
{
    _hill = hill;
    self.label.text = hill.name;
}

@end

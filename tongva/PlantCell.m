//
//  PlantCell.m
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "PlantCell.h"

@interface PlantCell() {
    Plant *_plant;
}
@end

@implementation PlantCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (void)setPlant:(Plant *)plant
{
    _plant = plant;
    _commonNameLabel.text = _plant.commonName;
    _latinNameLabel.text = _plant.latinName;
    [_imageView setImageWithURL:_plant.imageURL placeholderImage:[Image placeholder]];
}

- (Plant *)plant
{
    return _plant;
}

@end

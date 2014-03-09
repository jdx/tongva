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

UIImageView *_image;
UILabel *_label;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _label = [[UILabel alloc] initWithFrame:self.bounds];
        _label.textColor = UIColor.whiteColor;
        [self addSubview:_label];
        
        _image = [[UIImageView alloc] initWithFrame:self.bounds];
        [self addSubview:_image];
    }
    return self;
}

- (void)setPlant:(Plant *)plant
{
    _plant = plant;
    _label.text = _plant.commonName;
    [_image setImageWithURL:_plant.imageURL];
}

- (Plant *)plant
{
    return _plant;
}

@end

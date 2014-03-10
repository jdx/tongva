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
    UIImageView *_image;
    UILabel *_commonNameLabel;
    UILabel *_latinNameLabel;
}
@end

@implementation PlantCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _image = [[UIImageView alloc] initWithFrame:CGRectMake(0.0, 0.0, frame.size.width, frame.size.height/10*8)];
        _image.contentMode = UIViewContentModeScaleAspectFill;
        _image.clipsToBounds = YES;
        [self addSubview:_image];

        _commonNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, frame.size.height/10*8, frame.size.width, frame.size.height/10)];
        _commonNameLabel.textColor = UIColor.whiteColor;
        _commonNameLabel.font = [_commonNameLabel.font fontWithSize:15];
        [self addSubview:_commonNameLabel];
        
        _latinNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, frame.size.height/10*9, frame.size.width, frame.size.height/10)];
        _latinNameLabel.textColor = UIColor.whiteColor;
        _latinNameLabel.font = [_latinNameLabel.font fontWithSize:15];
        [self addSubview:_latinNameLabel];
    }
    return self;
}

- (void)setPlant:(Plant *)plant
{
    _plant = plant;
    _commonNameLabel.text = _plant.commonName;
    _latinNameLabel.text = _plant.latinName;
    [_image setImageWithURL:_plant.imageURL placeholderImage:[Image placeholder]];
}

- (Plant *)plant
{
    return _plant;
}

@end

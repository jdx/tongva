//
//  PlantTypeCollectionHeaderView.m
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "PlantTypeCollectionHeaderView.h"

@interface PlantTypeCollectionHeaderView() {
    NSArray *_plantType;
}
@end

@implementation PlantTypeCollectionHeaderView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (NSArray *)plantType
{
    return _plantType;
}

- (void)setPlantType:(NSArray *)plantType
{
    _plantType = plantType;
    self.label.text = [((Plant *) _plantType[0]) type];
}

@end

//
//  PlantViewController.m
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "PlantViewController.h"

@interface PlantViewController () {
    Plant *_plant;
}
@end

@implementation PlantViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (Plant *)plant
{
    return _plant;
}

- (void)setPlant:(Plant *)plant
{
    [self view];
    self.title = plant.commonName;
    self.latinNameLabel.text = plant.latinName;
    [self.imageView setImageWithURL:plant.imageURL placeholderImage:[Image placeholder]];
}

@end

//
//  PlantViewController.m
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "PlantViewController.h"

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
    _plant = plant;
    self.title = _plant.commonName;
    self.commonNameLabel.text = _plant.commonName;
    self.latinNameLabel.text = _plant.latinName;
    self.typeLabel.text = _plant.type;
    [self.imageView setImageWithURL:_plant.imageURL placeholderImage:[Image placeholder]];
}

- (IBAction)moreInfoClicked {
    NSString *encodedLatinName = [_plant.latinName stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://google.com/search?q=%@", encodedLatinName]];
    [[UIApplication sharedApplication] openURL:url];
}

@end

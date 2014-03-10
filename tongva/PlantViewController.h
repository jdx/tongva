//
//  PlantViewController.h
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+AFNetworking.h"

#import "Plant.h"
#import "image.h"

@interface PlantViewController : UIViewController

- (Plant *)plant;
- (void)setPlant:(Plant *)plant;

@property (weak, nonatomic) IBOutlet UILabel *latinNameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;

@end

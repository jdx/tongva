//
//  PlantViewController.h
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TongvaData.h"
#import "PlantCell.h"
#import "Hill.h"

@interface HillViewController : UICollectionViewController <UICollectionViewDataSource>

@property Hill *hill;

@end

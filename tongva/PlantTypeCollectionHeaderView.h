//
//  PlantTypeCollectionHeaderView.h
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Plant.H"

@interface PlantTypeCollectionHeaderView : UICollectionReusableView

- (NSArray *)plantType;
- (void)setPlantType:(NSArray *)plantType;

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

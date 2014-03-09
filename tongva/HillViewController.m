//
//  PlantViewController.m
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "HillViewController.h"

@interface HillViewController ()

@end

@implementation HillViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = self.hill.name;
    [self.collectionView registerClass:[PlantCell class] forCellWithReuseIdentifier:@"PlantCell"];
}

- (NSInteger)numberOfSections:(NSInteger)section
{
    return self.hill.plantTypes.count;
}

- (NSInteger)collectionView:(UICollectionView *)cv numberOfItemsInSection:(NSInteger)section
{
    return [self.hill.plantTypes[section] count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PlantCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"PlantCell" forIndexPath:indexPath];
    cell.plant = self.hill.plantTypes[indexPath.section][indexPath.row];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((self.view.bounds.size.width/2) - 10, 100);
}

@end

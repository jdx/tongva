//
//  PlantViewController.m
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "HillViewController.h"

@interface HillViewController () {
}

@end

@implementation HillViewController

static CLLocationManager *sharedLocationManager;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = self.hill.name;
    self.locationManager.delegate = self;
    [self.locationManager startUpdatingLocation];
}

- (void)viewWillDisappear:(BOOL)animated
{
    self.locationManager.delegate = nil;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return self.hill.plantTypes.count;
}

- (NSInteger)collectionView:(UICollectionView *)cv numberOfItemsInSection:(NSInteger)section
{
    return [self.hill.plantTypes[section] count];
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    if (kind == UICollectionElementKindSectionHeader) {
        PlantTypeCollectionHeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"PlantTypeHeader" forIndexPath:indexPath];
        headerView.plantType = self.hill.plantTypes[indexPath.section];
        return headerView;
    } else {
        UICollectionReusableView* footerView = [collectionView dequeueReusableSupplementaryViewOfKind: UICollectionElementKindSectionFooter withReuseIdentifier:@"PlantTypeFooter" forIndexPath:indexPath ];
        return footerView;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PlantCell *cell = [cv dequeueReusableCellWithReuseIdentifier:@"PlantCell" forIndexPath:indexPath];
    cell.plant = self.hill.plantTypes[indexPath.section][indexPath.row];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(self.view.bounds.size.width, 200);
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    PlantCell *cell = (PlantCell *)[collectionView cellForItemAtIndexPath:indexPath];
    PlantViewController *plantVC = [self.storyboard instantiateViewControllerWithIdentifier:@"PlantViewController"];
    plantVC.plant = cell.plant;
    [self.navigationController pushViewController:plantVC animated:YES];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
}

- (CLLocationManager *)locationManager
{
    if (!sharedLocationManager) {
        sharedLocationManager = [[CLLocationManager alloc] init];
    }
    return sharedLocationManager;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    CLLocation *loc = locations[0];
    NSLog(@"%d", [self.hill isLocationOnHill:loc.coordinate]);
}

@end

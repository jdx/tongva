//
//  ViewController.m
//  tongva
//
//  Created by Jeff Dickey on 3/9/14.
//  Copyright (c) 2014 dickeyxxx. All rights reserved.
//

#import "HillsViewController.h"

@interface HillsViewController ()

@end

@implementation HillsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(self.view.bounds.size.width, 70);
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return Hill.hills.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    HillCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HillCell" forIndexPath:indexPath];
    cell.hill = Hill.hills[indexPath.row];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"showPlant" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showPlant"]) {
        HillViewController *hillVC = segue.destinationViewController;
        hillVC.hill = self.selectedHill;
    }
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Hills" style:UIBarButtonItemStylePlain target:nil action:nil];
}

- (Hill *)selectedHill
{
    NSIndexPath *indexPath = [self.collectionView indexPathsForSelectedItems][0];
    return Hill.hills[indexPath.row];
}

@end

//
//  homeVC.m
//  carpedm
//
//  Created by ess on 20/10/17.
//  Copyright © 2017 Smitiv. All rights reserved.
//

#import "homeVC.h"
#import "SWRevealViewController.h"
#import "tourCollectionViewCell.h"

@interface homeVC () {
    NSArray *tourCollection;
    NSArray *tourTypes;
    NSArray *tourTimings;
}

@end

@implementation homeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    tourCollection = [NSArray arrayWithObjects:@"cycling.jpg", @"galapagous.jpg", @"climbing.jpg", nil];
    tourTypes = [NSArray arrayWithObjects:@"Cycling", @"Galapagous", @"Climbing", nil];
    tourTimings = [NSArray arrayWithObjects:@"12 hours", @"9 hours", @"2 hours", nil];
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return tourCollection.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    
    tourCollectionViewCell *cell = [_tourPlaceCollectionTable dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.tourPlaceCollectionViewImage.image=[UIImage imageNamed:[tourCollection objectAtIndex:indexPath.row]];
    return cell;
}

//pragma mark - UICollectionViewFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat cellDimension = self.view.frame.size.width / 4.0f;
    return CGSizeMake(cellDimension + 13.5, cellDimension + 60);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    //CGFloat leftRightInset = self.view.frame.size.width / 5.0f;
    return UIEdgeInsetsMake(0, 0, 0, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end

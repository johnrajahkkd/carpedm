//
//  homeVC.h
//  carpedm
//
//  Created by ess on 20/10/17.
//  Copyright © 2017 Smitiv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface homeVC : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@property (weak, nonatomic) IBOutlet UICollectionView *tourPlaceCollectionTable;

@end

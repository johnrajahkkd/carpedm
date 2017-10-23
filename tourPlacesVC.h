//
//  tourPlacesVC.h
//  carpedm
//
//  Created by ess on 21/10/17.
//  Copyright © 2017 Smitiv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tourPlacesVC : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tourPlacesTable;

@end

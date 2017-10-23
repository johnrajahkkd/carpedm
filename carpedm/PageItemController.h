//
//  PageItemController.h
//  carpedm
//
//  Created by ess on 17/10/17.
//  Copyright © 2017 Smitiv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageItemController : UIViewController

// Item controller information
@property (nonatomic) NSUInteger itemIndex;
@property (nonatomic, strong) NSString *imageName;

// IBOutlets

@property (weak, nonatomic) IBOutlet UIImageView *contentImageView;

@end

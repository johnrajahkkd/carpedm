//
//  PageItemController.m
//  carpedm
//
//  Created by ess on 17/10/17.
//  Copyright © 2017 Smitiv. All rights reserved.
//

#import "PageItemController.h"

@interface PageItemController ()


@end

@implementation PageItemController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _contentImageView.image = [UIImage imageNamed:_imageName];
}

#pragma mark Content

- (void)setImageName:(NSString *)name
{
    _imageName = name;
    _contentImageView.image = [UIImage imageNamed:_imageName];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end

//
//  PageViewController.m
//  carpedm
//
//  Created by ess on 16/10/17.
//  Copyright © 2017 Smitiv. All rights reserved.
//
/*
#import "PageViewController.h"
#import "ViewController.h"

@interface PageViewController () {
    NSArray *devices;
}
@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    devices = @[@"intro_bg1", @"intro_bg2", @"intro_bg3"];
    self.dataSource = self;
    
    ViewController *initialVC = (ViewController *)[self viewControllerAtIndex:0];
    NSArray *viewControllers = [NSArray arrayWithObjects:initialVC, nil];
    
    
    [self setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//helper method
- (UIViewController *) viewControllerAtIndex: (NSUInteger)index{
    ViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    viewController.strImage = devices[index];
    viewController.pageIndex = index;
    
    return viewController;
}


- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {

    NSUInteger index = ((ViewController *) viewController).pageIndex;
    if (index == 0 || index == NSNotFound) {
        return nil;
    }
    index--;
    
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {

    NSUInteger index = ((ViewController *) viewController).pageIndex;
    if (index == NSNotFound) {
        return nil;
    }
    index++;
    
    if (index == devices.count) {
        return nil;
    }
    
    return [self viewControllerAtIndex:index];
    
}



@end*/

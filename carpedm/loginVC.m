//
//  loginVC.m
//  carpedm
//
//  Created by ess on 16/10/17.
//  Copyright © 2017 Smitiv. All rights reserved.
//

#import "loginVC.h"
#import "IQKeyboardManager.h"

@interface loginVC ()

@end

@implementation loginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Resign textField if touched outside of UITextField/UITextView. Default is NO.
    [[IQKeyboardManager sharedManager] setShouldResignOnTouchOutside:YES];
}

- (IBAction)navBackBtn:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

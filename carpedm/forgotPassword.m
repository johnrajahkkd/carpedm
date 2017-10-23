//
//  forgotPassword.m
//  carpedm
//
//  Created by ess on 16/10/17.
//  Copyright © 2017 Smitiv. All rights reserved.
//

#import "forgotPassword.h"
#import "IQKeyboardManager.h"

@interface forgotPassword ()

@end

@implementation forgotPassword

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Resign textField if touched outside of UITextField/UITextView. Default is NO.
    [[IQKeyboardManager sharedManager] setShouldResignOnTouchOutside:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)navBackBtn:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end

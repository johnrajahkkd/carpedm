//
//  fbLogin.m
//  carpedm
//
//  Created by ess on 20/10/17.
//  Copyright © 2017 Smitiv. All rights reserved.
//

#import "fbLogin.h"

@interface fbLogin ()

@end

@implementation fbLogin

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _signupBtn.layer.borderWidth = 2.0f;
    _signupBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    _loginBtn.layer.borderWidth = 2.0f;
    _loginBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    
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

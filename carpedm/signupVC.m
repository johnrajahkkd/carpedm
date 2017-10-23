//
//  signupVC.m
//  carpedm
//
//  Created by ess on 16/10/17.
//  Copyright © 2017 Smitiv. All rights reserved.
//

#import "signupVC.h"
#import "IQKeyboardManager.h"

@interface signupVC ()
@property (weak, nonatomic) IBOutlet UITextField *pwdField;
@property (weak, nonatomic) IBOutlet UIButton *pwdToggle;

@end

@implementation signupVC

- (void)viewDidLoad {
    [super viewDidLoad];
  
    //Change color of the text and make it as hyperlink
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithAttributedString: _termsConditionLabel.attributedText];
    [text addAttribute:NSForegroundColorAttributeName
                 value:[UIColor blueColor]
                 range:NSMakeRange(42, 32)];
    [text addAttribute:NSLinkAttributeName value: @"http://www.google.com" range: NSMakeRange(42, 32)];
    [_termsConditionLabel setAttributedText: text];
    
    //Resign textField if touched outside of UITextField/UITextView. Default is NO.
    [[IQKeyboardManager sharedManager] setShouldResignOnTouchOutside:YES];
    
    //set color to vertical indicator
    

    
}

-(void)scrollViewDidScroll:(UIScrollView *)_scrollView {
    //get refrence of vertical indicator
    UIScrollView *verticalIndicator = ((UIScrollView *)[_scrollView.subviews objectAtIndex:(_scrollView.subviews.count-1)]);
    //set color to vertical indicator
    [verticalIndicator setBackgroundColor:[UIColor redColor]];
    
    
  /*  //get refrence of horizontal indicator
    UIImageView *horizontalIndicator = ((UIImageView *)[_scrollView.subviews objectAtIndex:(_scrollView.subviews.count-2)]);
    //set color to horizontal indicator
    [horizontalIndicator setBackgroundColor:[UIColor blueColor]];
   */
}

//Password show hide Toggle
- (IBAction)pwdToggle:(id)sender {
   
   
    
    [ self.pwdToggle setImage:[UIImage imageNamed:@"showPwd"] forState:(UIControlStateNormal)];
//    _pwdToggle.tintColor = [UIColor grayColor];
    
    if (self.pwdField.secureTextEntry == YES) {
        [ self.pwdToggle setImage:[UIImage imageNamed:@"hidePwd"] forState:(UIControlStateNormal)];
 //       _pwdToggle.tintColor = [UIColor grayColor];
        self.pwdField.secureTextEntry = NO;
    } else {
        [ self.pwdToggle setImage:[UIImage imageNamed:@"showPwd"] forState:(UIControlStateNormal)];
   //     _pwdToggle.tintColor = [UIColor grayColor];
        self.pwdField.secureTextEntry = YES;
    }
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

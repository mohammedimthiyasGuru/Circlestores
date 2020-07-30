//
//  loginpageVC.h
//  circles store
//
//  Created by Mohammed Imthiyas on 29/07/20.
//  Copyright © 2020 Mohammed Imthiyas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loginpageVC : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *emailIDText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;
- (IBAction)loginButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *SCrollView;
@property (weak, nonatomic) IBOutlet UIButton *ForgotPassword;
- (IBAction)ForgotPassword:(id)sender;
- (IBAction)RegisterButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *loginOtulet;

@end



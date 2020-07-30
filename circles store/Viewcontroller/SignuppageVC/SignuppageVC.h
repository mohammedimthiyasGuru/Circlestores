//
//  SignuppageVC.h
//  circles store
//
//  Created by Mohammed Imthiyas on 29/07/20.
//  Copyright © 2020 Mohammed Imthiyas. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SignuppageVC : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *emailIDText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;
- (IBAction)loginButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *SCrollView;
@property (weak, nonatomic) IBOutlet UIButton *ForgotPassword;
- (IBAction)ForgotPassword:(id)sender;
- (IBAction)RegisterButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *loginOtulet;



- (IBAction)backButtonAction:(id)sender;

@end

NS_ASSUME_NONNULL_END

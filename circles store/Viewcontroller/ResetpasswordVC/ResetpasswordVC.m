//
//  ResetpasswordVC.m
//  circles store
//
//  Created by Mohammed Imthiyas on 29/07/20.
//  Copyright © 2020 Mohammed Imthiyas. All rights reserved.
//

#import "ResetpasswordVC.h"
#import "Utility.h"
#import "Reachability.h"
#import "AFNetworking.h"
#import "AFHTTPRequestOperationManager.h"
#import "UIImageView+AFNetworking.h"
//#import "SCLAlertView.h"
#import "AFHTTPSessionManager.h"

@interface ResetpasswordVC (){
    NSUInteger mailValid;
      UIActivityIndicatorView * activityIndicatorView;
}

@end

@implementation ResetpasswordVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
     activityIndicatorView = [[UIActivityIndicatorView alloc]init];
     activityIndicatorView.transform = CGAffineTransformMakeScale(1,1);
     [activityIndicatorView setCenter:self.view.center];
     activityIndicatorView.color = [UIColor lightGrayColor];
     [self.view addSubview:activityIndicatorView];


     
     [_emailIDText setDelegate:self];
     [_passwordText setDelegate:self];
     [Utility buttonRadius:_loginOtulet];

     UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gestureHandlerMethod:)];
     [_SCrollView addGestureRecognizer:tapRecognizer];

    
    // Do any additional setup after loading the view.
}


- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
}



-(void)gestureHandlerMethod:(UITapGestureRecognizer*)sender {
    [_SCrollView setContentOffset:CGPointZero animated:YES];
    [self.view endEditing:YES];
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self.SCrollView setContentOffset: CGPointMake(0, textField.frame.origin.y-150) animated: YES];
}

- (IBAction)backButtonAction:(id)sender {
   [self.navigationController popToRootViewControllerAnimated:YES];
}


- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    
    if (theTextField == _emailIDText)
    {
        [_passwordText becomeFirstResponder];
    }
    else if (theTextField == _passwordText)
    {
        [_SCrollView setContentOffset:CGPointZero animated:YES];
        [self.view endEditing:YES];
    }
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)loginButton:(id)sender
{
     [Utility Pushview:@"loginpageVC":self];

}

- (IBAction)ForgotPassword:(id)sender
{
  [Utility Pushview:@"LandingScreen":self];
}


- (IBAction)RegisterButton:(id)sender {
    [Utility Pushview:@"DashboardVC":self];
}

@end

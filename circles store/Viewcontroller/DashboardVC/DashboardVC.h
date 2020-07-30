//
//  DashboardVC.h
//  circles store
//
//  Created by Mohammed Imthiyas on 29/07/20.
//  Copyright © 2020 Mohammed Imthiyas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>



@interface DashboardVC : UIViewController<WKNavigationDelegate>
@property (weak, nonatomic) IBOutlet UITextField *emailIDText;

@property (strong, nonatomic) IBOutlet WKWebView *webkitView;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *ACtivityIndicator;


@end



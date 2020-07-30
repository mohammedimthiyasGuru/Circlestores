//
//  DashboardVC.m
//  circles store
//
//  Created by Mohammed Imthiyas on 29/07/20.
//  Copyright © 2020 Mohammed Imthiyas. All rights reserved.
//

#import "DashboardVC.h"

@interface DashboardVC ()

@end

@implementation DashboardVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_ACtivityIndicator startAnimating];
    [NSTimer scheduledTimerWithTimeInterval:2.5
      target:self
    selector:@selector(theAction)
    userInfo:nil
     repeats:NO];
    
    NSLog(@"testing");
    NSURL *targetURL = [NSURL URLWithString:@"https://circles-safety.myshopify.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [_webkitView loadRequest:request];
    
}

-(void) theAction {
[_ACtivityIndicator stopAnimating];
[_ACtivityIndicator setHidden:YES];
  NSLog(@"Will appear after a 2 second delay.");

}



@end

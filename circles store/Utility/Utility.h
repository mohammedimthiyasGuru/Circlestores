//
//  Utility.h
//  CommuniteApp
//
//  Created by admin on 24/05/18.
//  Copyright © 2018 Tritonitsolutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"

@interface Utility : NSObject<UIGestureRecognizerDelegate,UIScrollViewDelegate>
+(NSString *)checknetwork;
+(NSString *)BaseURL;
+(NSString *)ImageURL:(NSString *)imageString;
+(void)Pushview :(NSString *)stringValues :(UIViewController *)view ;
+(void)Pushviewno :(NSString *)stringValues :(UIViewController *)view ;
+(void)Popview :(NSString *)stringValues :(UIViewController *)view ;
+(void)alerview :(NSString *)Alert :(NSString *)message;
+(void)PresentView :(NSString *)stringValues :(UIViewController *)view;
+(void)startActivity;
+(void)stopActivity;
+(void)shadowbutton :(UIButton *)button;
+(void)shadowview :(UIView *)view;
+(void)placeholder :(UITextField *)text :(NSString *)String;
+(BOOL)gmailValidation :(NSString *)mailstring;

+(void)buttonRadius :(UIButton*)button;
+(void)roundedImage :(UIImageView *)image;

+(void)headerheightAction :(NSLayoutConstraint *)height;
+(void)viewCorner :(UIView*)view ;

+(BOOL)CountryCodeCheck :(NSString *)code ;

+(NSString *)CountryCode;
+(NSString *)PhoneNumber;
+(NSString *)BaseURLNew;
+(NSString *)CurrneDate;

+(NSString *)stringValues :(NSString *)string;

@end

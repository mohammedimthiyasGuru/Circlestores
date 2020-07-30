//
//  Utility.m
//  CommuniteApp
//
//  Created by admin on 24/05/18.
//  Copyright © 2018 Tritonitsolutions. All rights reserved.
//

#import "Utility.h"
//#import "SCLAlertView.h"
#import "Reachability.h"
#define ACCEPTABLE_CHARECTERS @"0123456789+-"

@implementation Utility

+(void)startActivity
{
//    SCLAlertView *alert = [[SCLAlertView alloc] initWithNewWindow];
//    alert.showAnimationType = SCLAlertViewHideAnimationSlideOutToCenter;
//    alert.hideAnimationType = SCLAlertViewHideAnimationSlideOutFromCenter;
//    alert.backgroundType = SCLAlertViewBackgroundTransparent;
//    [alert showWaiting:@"Waiting..." subTitle:@"You've just displayed this awesome Pop Up View with transparent background" closeButtonTitle:nil duration:50.0f];
}
+(void)stopActivity
{
//    SCLAlertView * stopActivity = [[SCLAlertView alloc] initWithNewWindow];
//    [stopActivity hideView];
}

+(void)Pushviewno :(NSString *)stringValues :(UIViewController *)view
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:[[NSUserDefaults standardUserDefaults]stringForKey:@"StoryboardName"] bundle:[NSBundle mainBundle]];
    UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:stringValues];
    [view.navigationController pushViewController:viewController animated:NO];
}


+(void)Pushview :(NSString *)stringValues :(UIViewController *)view
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:stringValues];
    [view.navigationController pushViewController:viewController animated:YES];
}
+(void)Popview :(NSString *)stringValues :(UIViewController *)view
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:stringValues];
    [view.navigationController popToViewController:viewController animated:YES];
}


+(void)PresentView :(NSString *)stringValues :(UIViewController *)view
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:stringValues];
    [view presentViewController:viewController animated:NO completion:nil];
}

+(NSString *) checknetwork
{
    NSString * resultString;
    Reachability * networkReachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus networkStatus = [networkReachability currentReachabilityStatus];
    resultString = [NSString stringWithFormat:@"%ld",(long)networkStatus];
    return  resultString;
}
+(void)shadowbutton :(UIButton *)button
{
    button.layer.masksToBounds = NO;
    button.layer.shadowOffset = CGSizeMake(5, 5);
    button.layer.shadowRadius = 3;
    button.layer.shadowOpacity = 0.2;
    button.layer.cornerRadius = 3.0f;
}
+(void)shadowview :(UIView *)view
{
    view.layer.masksToBounds = NO;
    view.layer.shadowOffset = CGSizeMake(5, 5);
    view.layer.shadowRadius = 2;
    view.layer.shadowOpacity = 0.1;
    view.layer.cornerRadius = 2.0f;
    view.layer.cornerRadius = 3;
}
+(NSString *)stringValues :(NSString *)string
{
    return [NSString stringWithFormat:@"%@",string];;
}

+(NSString *)ImageURL :(NSString *) imageString
{
    NSString *AppendStr6 = @"";
    return [AppendStr6 stringByAppendingString:imageString];
}
+(NSString *)BaseURLNew
{
    return(@"https://flatmanagement.herokuapp.com/authentication/");
}
+(NSString *)BaseURL
{
    return(@"http://callistaindia.com/demo/CommunityAPI/api/");
}
+(void)alerview :(NSString *)Alert :(NSString *)message
{
    UIAlertView * alert=[[UIAlertView alloc]initWithTitle:Alert message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

+(void)placeholder :(UITextField *)text :(NSString *)String
{
    text.attributedPlaceholder = [[NSAttributedString alloc] initWithString:String attributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
}
+(BOOL)gmailValidation :(NSString *)mailstring
{
    BOOL stricterFilter = NO;
    NSString *stricterFilterString = @"^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4,3,5,6,7}$";
    NSString *laxString = @"^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:mailstring];
}

+(void)buttonRadius :(UIButton*)button
{
    button.layer.cornerRadius = button.frame.size.height/2;
    button.clipsToBounds = true;
}

+(void)roundedImage :(UIImageView *)image
{
    image.layer.cornerRadius = image.layer.frame.size.height/2;
    image.clipsToBounds = YES;
}
+(void)headerheightAction :(NSLayoutConstraint *)height
{// Header Height
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
    {
        CGSize screenSize = [[UIScreen mainScreen] bounds].size;
        if (screenSize.height == 812.0f)
        {
            height.constant = 85;
        }else
        {
            height.constant = 65;
        }
    }
}
+(void)viewCorner :(UIView*)view
{
    view.layer.cornerRadius = 6.0;
    view.clipsToBounds = true;
}
+(BOOL)CountryCodeCheck :(NSString *)code
{
    NSArray * CountryCode = [NSArray arrayWithObjects:@"+93",@"+355",@"+213", @"+1-684"@"+376",@"+244",@"+1-264",@"+672",@"+1-268",@"+54",@"+374",@"+297",@"+61",@"+43",@"+994",@"+1-441",@"+975",@"+591",@"+387",@"+267",@"+55",@"+246",@"+1-284",@"+673",@"+359",@"+226",@"+257",@"+855",@"+237",@"+1",@"+238",@"+1-345",@"+236",@"+235",@"+56",@"+86",@"+61",@"+57",@"+269",@"+682",@"+506",@"+385",@"+53",@"+599",@"+357",@"+420",@"+243",@"+45",@"+253",@"+1-767",@"+1-808",@"+1-829",@"+1-849",@"+670",@"+593",@"+20",@"+503",@"+240",@"+291",@"+372",@"+251",@"+500",@"+298",@"+679",@"+358",@"+33",@"+689",@"+241",@"+220",@"+995",@"+49",@"+233",@"+350",@"+30",@"+299",@"+1-473",@"+1-671",@"+502",@"+44-1481",@"+224",@"+245",@"+592",@"+509",@"+504",@"+852",@"+36",@"+354",@"+91",@"+62",@"+98",@"+964",@"+353",@"+44-1642",@"+972",@"+39",@"+225",@"+1-876",@"+81",@"+44-1534",@"+962",@"+7",@"+254",@"+686",@"+383",@"+965",@"+996",@"+856",@"+371",@"+961",@"+266",@"+231",@"+218",@"+423",@"+370",@"+352",@"+853",@"+389",@"+261",@"+265",@"+60",@"+960",@"+223",@"+356",@"+692",@"+222",@"+230",@"+262",@"+52",@"+691",@"+373",@"+377",@"+377",@"+976",@"+382",@"+1-664",@"+212",@"+258",@"+95",@"+264",@"+674",@"+977",@"+31",@"+599",@"+687",@"+64",@"+505",@"+227",@"+234",@"+683",@"+850",@"+1-670",@"+47",@"+968",@"+92",@"+680",@"+92",@"+680",@"+970",@"+507",@"+675",@"+595",@"+51",@"+63",@"+64",@"+48",@"+351",@"+1-787",@"+1-939",@"+974",@"+242",@"+262",@"+40",@"+7",@"+250",@"+590",@"+290",@"+1-869",@"+1-758",@"+590",@"+508",@"+1-784",@"+685",@"+378",@"+239",@"+966",@"+221",@"+381",@"+248",@"+232",@"+65",@"+1-721",@"+421",@"+386",@"+677",@"+252",@"+27",@"+82",@"+211",@"+34",@"+94",@"+249",@"+597",@"+47",@"+268",@"+46",@"+41",@"+963",@"+886",@"+992",@"+255",@"+66",@"+288",@"+66",@"+228",@"+690",@"+676",@"+1-868",@"+216",@"+90",@"+993",@"+1-649",@"+688",@"+1-340",@"+256",@"+380",@"+971",@"+44",@"+1",@"+598",@"+998",@"+678",@"+379",@"+58",@"+84",@"+681",@"+212",@"+967",@"+260",@"+263", nil];
    
    if ([CountryCode containsObject:code])
    {
        return YES;
    }else
    {
        return NO;
    }
}

+(NSString *)CountryCode
{
    return @"0123456789+-";
}
+(NSString *)PhoneNumber
{
    return @"0123456789";
}
+(NSString *)CurrneDate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMM dd, 2017 hh:mm a"];
    return [dateFormatter stringFromDate:[NSDate date]];
}



@end

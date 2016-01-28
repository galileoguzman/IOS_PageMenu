//
//  ViewController.m
//  Paging
//
//  Created by Galileo Guzman on 27/01/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import "Home.h"

@interface Home ()

@property (nonatomic) CAPSPageMenu *pageMenu;

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imgProfile.layer.opacity = 0.7;
    self.imgProfile.layer.cornerRadius = self.imgProfile.frame.size.height / 2;
    self.imgProfile.layer.masksToBounds = YES;
    
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

-(void) initController
{
    // init child controllers
    
    Tweets *controller1 = [[Tweets alloc]initWithNibName:@"Tweets" bundle:nil];
    controller1.title = @"Tweets";
    
    Collage *controller2 = [[Collage alloc]initWithNibName:@"Collage" bundle:nil];
    controller2.title = @"Tweets";
    
    // Array with child controllers
    NSArray *controllerArray = @[controller1, controller2];

    // options for design
    NSDictionary *parameters = @{
                                 CAPSPageMenuOptionScrollMenuBackgroundColor: [UIColor colorWithRed:34.0/255.0 green:165.0/255.0 blue:182.0/255.0 alpha:1.0],
                                 CAPSPageMenuOptionViewBackgroundColor: [UIColor colorWithRed:255.0/255.0 green:103.0/255.0 blue:59.0/255.0 alpha:1.0],
                                 CAPSPageMenuOptionSelectionIndicatorColor: [UIColor whiteColor],
                                 CAPSPageMenuOptionBottomMenuHairlineColor: [UIColor colorWithRed:70.0/255.0 green:70.0/255.0 blue:70.0/255.0 alpha:1.0],
                                 CAPSPageMenuOptionMenuItemFont: [UIFont fontWithName:@"HelveticaNeue" size:13.0],
                                 CAPSPageMenuOptionMenuHeight: @(40.0),
                                 CAPSPageMenuOptionMenuItemWidth: @(90.0),
                                 CAPSPageMenuOptionCenterMenuItems: @(YES)
                                 };
    
    
    // set opotions and array to page property
    self.pageMenu = [[CAPSPageMenu alloc] initWithViewControllers:controllerArray frame:CGRectMake(0.0, 0.0, self.view.frame.size.width, self.view.frame.size.height) options:parameters];
    [self.vPages addSubview:self.pageMenu.view];
    
}

@end

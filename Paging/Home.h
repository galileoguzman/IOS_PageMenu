//
//  ViewController.h
//  Paging
//
//  Created by Galileo Guzman on 27/01/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "CAPSPageMenu.h"

#import "Tweets.h"
#import "Collage.h"
#import "Settings.h"

@interface Home : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imgProfile;
@property (strong, nonatomic) IBOutlet UIButton *lblTwiterAccount;
@property (strong, nonatomic) IBOutlet UIView *vPages;

@end


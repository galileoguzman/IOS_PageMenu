//
//  Tweets.h
//  Paging
//
//  Created by Galileo Guzman on 27/01/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TwitCell.h"

@interface Tweets : UIViewController<UITableViewDataSource, UITabBarDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tblTweets;
@end

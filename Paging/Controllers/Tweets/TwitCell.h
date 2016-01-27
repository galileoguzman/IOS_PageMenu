//
//  TwitCell.h
//  Paging
//
//  Created by Galileo Guzman on 27/01/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TwitCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imgTwit;
@property (strong, nonatomic) IBOutlet UILabel *lblAccount;
@property (strong, nonatomic) IBOutlet UILabel *lblTwit;

@end

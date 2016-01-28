//
//  TwitCell.m
//  Paging
//
//  Created by Galileo Guzman on 27/01/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import "TwitCell.h"

@implementation TwitCell

- (void)awakeFromNib {
    // Initialization code
    
    self.vContent.layer.cornerRadius = 5;
    self.vContent.layer.masksToBounds = YES;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

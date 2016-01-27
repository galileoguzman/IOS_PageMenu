//
//  Collage.m
//  Paging
//
//  Created by Galileo Guzman on 27/01/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import "Collage.h"

@interface Collage ()

@end

@implementation Collage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initController{
    
    for (int i = 0; i < 10; i++) {
        UIImageView *img = [[UIImageView alloc] init];
        
        img.frame = CGRectMake(
                     0,
                     200*i,
                     self.svCollage.frame.size.width,
                     200);
        
        if (i % 2 == 0) {
            img.image = [UIImage imageNamed:@"jennifer-lawrence.jpg"];
        }else{
            img.image = [UIImage imageNamed:@"Scarlett-Johansson.jpg"];
        }
        
        [self.svCollage addSubview:img];
    }
    
    self.svCollage.contentSize = CGSizeMake(self.svCollage.frame.size.width, 200 * 11);
}

@end

//
//  Tweets.m
//  Paging
//
//  Created by Galileo Guzman on 27/01/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import "Tweets.h"

@interface Tweets ()

@property (nonatomic, strong) NSArray *arTweets;

@end

@implementation Tweets

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) initController{
    self.arTweets = @[@"IOS is awesome", @"Android is cool", @"I gonna read 'Seven mobile apps on seven weeks' book.", @"Puerto Escondigo has the best waves for surfing", @"The sun is sadly today", @"The Pluma Hidalgo's coffee is the best I tasted.", @"It's easier that one wall tell you 'End off' that woman"];
}

#pragma mark - tableview methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.arTweets.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 75;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"twitCell";
    
    TwitCell *cell = (TwitCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"TwitCell" bundle:nil] forCellReuseIdentifier:CellIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    }
    
    cell.lblTwit.text = self.arTweets[indexPath.row];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Row pressed!!");
}


@end

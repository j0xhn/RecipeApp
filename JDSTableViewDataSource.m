//
//  JDSTableViewDataSource.m
//  Recipe App
//
//  Created by John D. Storey on 5/22/14.
//  Copyright (c) 2014 d. All rights reserved.
//

#import "JDSTableViewDataSource.h"

@implementation JDSTableViewDataSource



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
// required for TableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell =
    (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"recipeCell"
                                                       forIndexPath:indexPath];
    
    cell.textLabel.text = @"This text will appear in the cell";
    
    return cell;
}


@synthesize recipeDictionary;
@synthesize recipe;
@synthesize name;
@synthesize description;
//
//recipe = [[NSDictionary alloc] initWithObjectsAndKeys:
//                         @"recipeName", @"Recipe Name",
//                         @"recipeDiscription", @"A fine and delicious meal",
//                         
//                         nil];
//
//recipeDictionary = [[NSDictionary alloc] initWithDictionary:(NSDictionary *)recipe];

@end

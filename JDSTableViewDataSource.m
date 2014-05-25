//
//  JDSTableViewDataSource.m
//  Recipe App
//
//  Created by John D. Storey on 5/22/14.
//  Copyright (c) 2014 d. All rights reserved.
//

#import "JDSTableViewDataSource.h"
#import "JDSRecipe.h"

static NSString * const cellIdentifier = @"identifier";

@implementation JDSTableViewDataSource
// required for the

- (void)registerTableView:(UITableView *)tableView {
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentifier];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [JDSRecipe count];
}
// required for UIApplicationDelegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier
                                                       forIndexPath:indexPath];
    
    cell.textLabel.text = [JDSRecipe titleAtIndex:indexPath.row ];
    cell.detailTextLabel.text = [JDSRecipe descriptionAtIndex:indexPath.row ];
    
    NSLog(@"%@", indexPath.description);
    
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *sectionName;
    switch (section)
    {
        case 0:
            sectionName = NSLocalizedString(@"Recipes.com", @"First Section Name");
            break;
        case 1:
            sectionName = NSLocalizedString(@"Other Recipes", @"Second Section Name");
            break;
            // ...
        default:
            sectionName = @"";
            break;
    }
    return sectionName;
}


@end

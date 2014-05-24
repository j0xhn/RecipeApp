//
//  JDSTableViewDataSource.h
//  Recipe App
//
//  Created by John D. Storey on 5/22/14.
//  Copyright (c) 2014 d. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JDSTableViewDataSource : NSObject <UITableViewDataSource>
// data types
- (void)registerTableView:(UITableView *)tableView;

- (CGFloat)heightForIndexPath:(NSIndexPath *)indexPath;

@end

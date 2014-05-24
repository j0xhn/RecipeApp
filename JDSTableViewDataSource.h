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
@property (nonatomic, strong) NSDictionary *recipeDictionary;
@property (nonatomic, strong) NSDictionary *recipe;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *description;
@property (strong, nonatomic) NSObject *data;




@end

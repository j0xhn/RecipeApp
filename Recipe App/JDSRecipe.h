//
//  JDSRecipe.h
//  Recipe App
//
//  Created by John D. Storey on 5/24/14.
//  Copyright (c) 2014 d. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JDSRecipe : NSObject

+ (NSInteger)count;
+ (NSDictionary *)recipeAtIndex:(NSInteger)index;
+ (NSString *)titleAtIndex:(NSInteger)index;
+ (NSString *)descriptionAtIndex:(NSInteger)index;
+ (NSArray *)recipes;

@end

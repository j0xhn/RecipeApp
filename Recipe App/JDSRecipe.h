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
+ (NSString *)typeAtIndex:(NSInteger)index;
+ (NSString *)descriptionAtIndex:(NSInteger)index;
+ (NSInteger)ingredientCountAtIndex:(NSInteger)index;
+ (NSString *)ingredientTypeAtIndex:(NSInteger)ingIndex inRecipeAtIndex:(NSInteger)recIndex;
+ (NSString *)ingredientVolumeAtIndex:(NSInteger)ingIndex inRecipeAtIndex:(NSInteger)recIndex;
+ (NSArray *)directions;

@end

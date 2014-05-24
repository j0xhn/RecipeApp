//
//  JDSRecipe.m
//  Recipe App
//
//  Created by John D. Storey on 5/24/14.
//  Copyright (c) 2014 d. All rights reserved.
//

#import "JDSRecipe.h"

@implementation JDSRecipe

static NSString * const RecipeTitleKey = @"recipeTitle";
static NSString * const RecipeDescriptionKey = @"recipeDescription";

+ (NSInteger)count {
    return [[self recipes] count];
}

+ (NSDictionary *)recipeAtIndex:(NSInteger)index{
    return [self recipes][index];
}
+ (NSString *)titleAtIndex:(NSInteger)index{
    return [self recipes][index][RecipeTitleKey];
}

+ (NSString *)descriptionAtIndex:(NSInteger)index{
    return [self recipes][index][RecipeDescriptionKey];
}

+ (NSArray *) recipes{
    return @[@{RecipeTitleKey:@"BlueBerries Burried Alive",
               RecipeDescriptionKey:@"Will surely leave you grounded"},
             @{RecipeTitleKey:@"Shooting Squad Salad",
               RecipeDescriptionKey:@"The only capital punishment is not having a taste"
               }];
}

@end




//
//  JDSDetailViewController.m
//  Recipe App
//
//  Created by John D. Storey on 5/24/14.
//  Copyright (c) 2014 d. All rights reserved.
//

#import "JDSDetailViewController.h"
#import "JDSAppDelegate.h"
#import "JDSRecipe.h"

@interface JDSDetailViewController ()

@end

@implementation JDSDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    UIScrollView *detailScrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:detailScrollView];
    self.view.backgroundColor = [UIColor whiteColor];

    self.title = [JDSRecipe titleAtIndex:self.recipeIndex];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

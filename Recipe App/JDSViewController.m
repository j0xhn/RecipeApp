//
//  JDSViewController.m
//  Recipe App
//
//  Created by John D. Storey on 5/22/14.
//  Copyright (c) 2014 d. All rights reserved.
//

#import "JDSViewController.h"
#import "JDSTableViewDataSource.h"
#import "JDSRecipe.h"
#import "JDSAppDelegate.h"
#import "JDSDetailViewController.h"

@interface JDSViewController () <UITableViewDelegate>

@property (nonatomic, strong) JDSTableViewDataSource *dataSource;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIView *detailView;

@end
//define


@implementation JDSViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITableView *mainTableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    mainTableView.delegate = self;
    [self.view addSubview:mainTableView];
    self.title = @"Recipes to Kill";
    
    JDSTableViewDataSource *dataSource = [JDSTableViewDataSource new];
    [dataSource registerTableView:mainTableView];
    self.dataSource = dataSource;
    
    mainTableView.dataSource = dataSource;
    self.tableView = mainTableView;
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
// completely optional, but sets hight of Row
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if ([[JDSRecipe typeAtIndex:indexPath.row] isEqualToString:@"Dessert"]) {
        NSLog(@"The type of this recipe is: %@", [JDSRecipe typeAtIndex:indexPath.row] );
        return 100;
        
    } else {
        return 44;
    }
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    NSLog(@"You Clicked: %@", [JDSRecipe titleAtIndex:indexPath.row] );
    
    JDSDetailViewController *newDetailView = [[JDSDetailViewController alloc] init];
    newDetailView.recipeIndex = indexPath.row;
    [self.navigationController pushViewController:newDetailView animated:YES];
//    self.title = [JDSRecipe titleAtIndex:indexPath.row];


    
}

@end

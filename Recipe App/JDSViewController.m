//
//  JDSViewController.m
//  Recipe App
//
//  Created by John D. Storey on 5/22/14.
//  Copyright (c) 2014 d. All rights reserved.
//

#import "JDSViewController.h"
#import "JDSTableViewDataSource.h"

@interface JDSViewController () <UITableViewDelegate>

@property (nonatomic, strong) JDSTableViewDataSource *dataSource;
@property (nonatomic, strong) UITableView *tableView;

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
    
    self.title = @"Recipes to Kill";
    
    UITableView *mainTableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    mainTableView.delegate = self;
    [self.view addSubview:mainTableView];
    
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
    
    return [self.dataSource heightForIndexPath:indexPath];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}
@end

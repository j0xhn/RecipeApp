//
//  JDSViewController.m
//  Recipe App
//
//  Created by John D. Storey on 5/22/14.
//  Copyright (c) 2014 d. All rights reserved.
//

#import "JDSViewController.h"

@interface JDSViewController ()

@end
//define
static NSString *recipeCellIdentifier = @"RecipeCell";
@implementation JDSViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (NSInteger)tableView:(UITableView *)mainTableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
// required for TableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell =
    (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:recipeCellIdentifier
                                                            forIndexPath:indexPath];
    
    cell.textLabel.text = @"This text will appear in the cell";
    
    return cell;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITableView *mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 64)];
    
    [self.view addSubview:mainTableView];
    // required for TableViewDataSource
    
}
-(void)changeText
{
    // witw?
//    self.label.text = [NSString stringWithFormat: @"%d", 0];
    
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

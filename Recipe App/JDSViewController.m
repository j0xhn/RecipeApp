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
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 64)];
    
    [self.view addSubview:tableView];
    // sets title

    // adds button
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
//    [button addTarget:self
//               action:@selector(changeText)
//     forControlEvents:UIControlEventTouchUpInside];
//    [button setTitle:@"My Button" forState:UIControlStateNormal];
//    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
//    button.backgroundColor = [UIColor lightGrayColor];
//    
//   // sets it to view
//   [self.view addSubview:button];
//    // adds label
//    
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 130, self.view.frame.size.width, 20)];
//    [self.view addSubview:label];
//    label.text = @"Hi";
//    label.textAlignment = NSTextAlignmentCenter;
//    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(91, 15,0,0)];
//    fromLabel.text = text;
    
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

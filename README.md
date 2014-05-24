RecipeApp
=========
+ Cells will be populated using dictionaries from Data Source
+ Each cell will display just the title 
++ (learn how to return UITableViewCell) 
++ deque your cells
+ Focus of App is to display information from App in table view

Steps
=========

1) In AppDelegate you'll create a navigation controller, then add a table view inside of it.
```objective-c
    JDSViewController *viewController = [JDSViewController new];
    viewController.title = @"Recipe App";
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewController];
    self.window.rootViewController = nav;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
```

2) Create a UIViewController *any specific reason why plain View Controller and then create a TableViewController and load it to there instead of just making it one from the beginning? and import DataSource and TableViewCell (don't think we really needed it on this assignment but am trying it out cause I found examples of people using it online) and then create the two required functions for 
```objective-c
#import "JDSViewController.h"
#import "JDSTableViewCell.h"
#import "JDSTableViewDataSource.h"

@interface JDSViewController ()

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
    
    UITableView *mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 64)];
    
//    [mainTableView setDataSource:recipeDictionary];
    
    [self.view addSubview:mainTableView];
    
    
}
```

3) Set DataSource as UIViewController's datasource, however this causes a crash

```objective-c
[mainTableView setDataSource:self]

```

4) Initialize an Array with recipe objects inside DataSource, this also doesn't work and gives error.  Is there a reason for this?  Also I don't see this anywhere on the example App, but saw it on Stack Overflow... I read the documentation but I don't really understand what it means.  Also I can't get UIViewController to recognize any of my variables defined in the DataSource.h file, why is that?

```objective-c
#import "JDSTableViewDataSource.h"

@implementation JDSTableViewDataSource

@synthesize recipeDictionary;
@synthesize name;
@synthesize description;

recipeDictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
                         @"recipeName", @"Recipe Name",
                         @"recipeDiscription", @"A fine and delicious meal",
                         
                         nil];
```

5) Place the two required meathods returning a dequeueReusableCell with title from DataSource, and the number of rows to return (keeping it two just to try to get it working). Placed in the DataSource.m file because keeping them in UIViewControll causes app to crash. 
```objective-c

#import "JDSTableViewDataSource.h"

@implementation JDSTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
// required for TableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell =
    (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"recipeCell"
                                                       forIndexPath:indexPath];
    
    cell.textLabel.text = @"This text will appear in the cell";
    
    return cell;
}


@synthesize recipeDictionary;
@synthesize recipe;
@synthesize name;
@synthesize description;
//
//recipe = [[NSDictionary alloc] initWithObjectsAndKeys:
//                         @"recipeName", @"Recipe Name",
//                         @"recipeDiscription", @"A fine and delicious meal",
//                         
//                         nil];
//
//recipeDictionary = [[NSDictionary alloc] initWithDictionary:(NSDictionary *)recipe];

@end
```




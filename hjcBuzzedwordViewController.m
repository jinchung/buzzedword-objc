//
//  hjcBuzzedwordViewController.m
//  buzzedword
//
//  Created by He, Changchen on 7/24/14.
//  Copyright (c) 2014 Jin Chung. All rights reserved.
//

#import "hjcBuzzedwordViewController.h"
#import "hjcBuzzword.h"

@interface hjcBuzzedwordViewController ()

@end

@implementation hjcBuzzedwordViewController

- (void)loadDefaultData {
    hjcBuzzword *defaultBuzzword1 = [[hjcBuzzword alloc] init];
    defaultBuzzword1.buzzwordName = @"Innovation";
    defaultBuzzword1.score = 0;
    [self.buzzwords addObject:defaultBuzzword1];
    
    hjcBuzzword *defaultBuzzword2 = [[hjcBuzzword alloc] init];
    defaultBuzzword2.buzzwordName = @"Execution";
    defaultBuzzword2.score = 0;
    [self.buzzwords addObject:defaultBuzzword2];
    
    hjcBuzzword *defaultBuzzword3 = [[hjcBuzzword alloc] init];
    defaultBuzzword3.buzzwordName = @"Synergy";
    defaultBuzzword3.score = 0;
    [self.buzzwords addObject:defaultBuzzword3];
}


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
    
    if(self.buzzwords==nil)
    {
        self.buzzwords = [[NSMutableArray alloc]init];
    }
    
    if ([self.buzzwords count] == 0) {
        [self loadDefaultData];
    }
    self.navigationController.navigationBar.hidden = NO;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


#pragma mark - Table view data source
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    hjcBuzzword *tappedBuzzword = [self.buzzwords objectAtIndex:indexPath.row];
    tappedBuzzword.score++;
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.buzzwords count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListPrototypeCell" forIndexPath:indexPath];
    hjcBuzzword *buzzword = [self.buzzwords objectAtIndex:indexPath.row];
    cell.textLabel.text = [NSMutableString stringWithFormat:@"%@ | %d", buzzword.buzzwordName, buzzword.score];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    return cell;
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

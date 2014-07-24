//
//  hjcBuzzedwordTableViewController.m
//  buzzedword
//
//  Created by Jin Chung on 7/22/14.
//  Copyright (c) 2014 Jin Chung. All rights reserved.
//

#import "hjcBuzzedwordTableViewController.h"
#import "hjcBuzzword.h"

@interface hjcBuzzedwordTableViewController ()
@end

@implementation hjcBuzzedwordTableViewController
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

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    if ([self.buzzwords count] == 0) {
        [self loadDefaultData];
    }
    self.navigationController.navigationBar.hidden = NO;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.buzzwords delete:@[indexPath]];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        hjcBuzzword *newBuzzword = [[hjcBuzzword alloc] init];
        newBuzzword.score = 0;
        [self.buzzwords insertObject:newBuzzword atIndex:@[indexPath]];
        NSArray *insertIndexPaths = [NSArray arrayWithObjects:[NSIndexPath indexPathForRow:@[indexPath] inSection:0], nil];
        [tableView insertRowsAtIndexPaths:insertIndexPaths withRowAnimation:UITableViewRowAnimationRight];
    }
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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

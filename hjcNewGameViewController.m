//
//  hjcNewGameViewController.m
//  buzzedword
//
//  Created by Jin Chung on 7/23/14.
//  Copyright (c) 2014 Jin Chung. All rights reserved.
//

#import "hjcNewGameViewController.h"
#import "hjcBuzzedwordTableViewController.h"

@interface hjcNewGameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UITextField *textField3;
@property (weak, nonatomic) IBOutlet UITextField *textField4;
@property (weak, nonatomic) IBOutlet UITextField *textField5;
@property (weak, nonatomic) IBOutlet UIButton *startGameButton;
@property (nonatomic, assign) id currentResponder;
@end

@implementation hjcNewGameViewController
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.startGameButton) return;
    hjcBuzzedwordTableViewController *tvc = (hjcBuzzedwordTableViewController *)[segue destinationViewController];
    tvc.buzzwords = [[NSMutableArray alloc] init];
    if (self.textField1.text.length > 0) {
        hjcBuzzword *first = [[hjcBuzzword alloc] init];
        first.buzzwordName = self.textField1.text;
        first.score = 0;
        [tvc.buzzwords addObject:first];
    }
    if (self.textField2.text.length > 0) {
        hjcBuzzword *second = [[hjcBuzzword alloc] init];
        second.buzzwordName = self.textField2.text;
        second.score = 0;
        [tvc.buzzwords addObject:second];
    }
    if (self.textField3.text.length > 0) {
        hjcBuzzword *third = [[hjcBuzzword alloc] init];
        third.buzzwordName = self.textField3.text;
        third.score = 0;
        [tvc.buzzwords addObject:third];
    }
    
    if (self.textField4.text.length > 0) {
        hjcBuzzword *second = [[hjcBuzzword alloc] init];
        second.buzzwordName = self.textField2.text;
        second.score = 0;
        [tvc.buzzwords addObject:second];
    }
    if (self.textField5.text.length > 0) {
        hjcBuzzword *third = [[hjcBuzzword alloc] init];
        third.buzzwordName = self.textField3.text;
        third.score = 0;
        [tvc.buzzwords addObject:third];
    }
    
}

-(BOOL) textFieldShouldReturn: (UITextField *) textField {
    [textField resignFirstResponder];
    return YES;
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
    // Do any additional setup after loading the view.
    self.textField1.delegate = self;
    self.textField2.delegate = self;
    self.textField3.delegate = self;
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

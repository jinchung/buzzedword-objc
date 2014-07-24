//
//  hjcBuzzedwordViewController.h
//  buzzedword
//
//  Created by He, Changchen on 7/24/14.
//  Copyright (c) 2014 Jin Chung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface hjcBuzzedwordViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)IBOutlet UITableView * tableView;
@property NSMutableArray *buzzwords;
@end

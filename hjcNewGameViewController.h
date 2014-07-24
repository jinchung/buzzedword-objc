//
//  hjcNewGameViewController.h
//  buzzedword
//
//  Created by Jin Chung on 7/23/14.
//  Copyright (c) 2014 Jin Chung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "hjcBuzzword.h"
#import "hjcBuzzedwordViewController.h"

@interface hjcNewGameViewController : UIViewController <UITextFieldDelegate>
-(IBAction)pushToGamePlay:(id)sender;
@end

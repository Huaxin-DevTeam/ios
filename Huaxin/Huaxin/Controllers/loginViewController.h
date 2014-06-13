//
//  loginViewController.h
//  Huaxin
//
//  Created by pep asm on 13/06/14.
//  Copyright (c) 2014 pep. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface loginViewController : UIViewController

- (IBAction)hideKeyboard:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *userFLD;
@property (strong, nonatomic) IBOutlet UITextField *passwordFLD;

@end

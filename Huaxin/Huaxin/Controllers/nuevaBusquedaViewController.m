//
//  nuevaBusquedaViewController.m
//  Huaxin
//
//  Created by pep asm on 13/06/14.
//  Copyright (c) 2014 pep. All rights reserved.
//

#import "nuevaBusquedaViewController.h"
#import "MMDrawerController.h"

@interface nuevaBusquedaViewController ()

@end

@implementation nuevaBusquedaViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)menuAction:(id)sender
{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}

@end

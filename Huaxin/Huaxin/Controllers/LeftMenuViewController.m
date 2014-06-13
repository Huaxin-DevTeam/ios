//
//  LeftMenuViewController.m
//  Huaxin
//
//  Created by pep asm on 11/06/14.
//  Copyright (c) 2014 pep. All rights reserved.
//

#import "LeftMenuViewController.h"
#import "mainViewController.h"

@interface LeftMenuViewController ()

@end

@implementation LeftMenuViewController

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
    self.nuevaBusqueda.selected = TRUE;
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nuevaBusquedaAction:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NUEVA_BUSQUEDA" object:nil];
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    [self setSelectedButton:sender];
}

- (IBAction)favsAction:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"FAVORITOS" object:nil];
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    [self setSelectedButton:sender];
}

- (IBAction)nuevoAnuncioAction:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NUEVO_ANUNCIO" object:nil];
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    [self setSelectedButton:sender];
}

- (IBAction)loginAction:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LOGIN" object:nil];
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
    [self setSelectedButton:sender];
}

#pragma mark - Button handlers

- (void)setSelectedButton:(UIButton *)selectedButton
{
    self.nuevaBusqueda.selected = (selectedButton == self.nuevaBusqueda);
    self.favoritos.selected = (selectedButton == self.favoritos);
    self.nuevoAnuncio.selected = (selectedButton == self.nuevoAnuncio);
    self.login.selected = (selectedButton == self.login);
}
@end

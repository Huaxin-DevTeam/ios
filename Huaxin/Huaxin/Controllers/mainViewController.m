//
//  mainViewController.m
//  Huaxin
//
//  Created by pep asm on 10/06/14.
//  Copyright (c) 2014 pep. All rights reserved.
//

#import "mainViewController.h"
#import "MMDrawerController.h"
#import "nuevaBusquedaViewController.h"
#import "loginViewController.h"
#import "favoritosViewController.h"
#import "nuevoAnuncioViewController.h"

@interface mainViewController ()

@end

@implementation mainViewController

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
    
    NSNotificationCenter *centerInfo = [NSNotificationCenter defaultCenter];
    
	[centerInfo addObserver:self selector:@selector(showOptionNuevaBusqueda) name:@"NUEVA_BUSQUEDA" object:nil];
	[centerInfo addObserver:self selector:@selector(showOptionFavoritos) name:@"FAVORITOS" object:nil];
	[centerInfo addObserver:self selector:@selector(showOptionNuevoAnuncio) name:@"NUEVO_ANUNCIO" object:nil];
	[centerInfo addObserver:self selector:@selector(showOptionLogin) name:@"LOGIN" object:nil];
    
    [self showOptionNuevaBusqueda];
    
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

#pragma mark - SHOW VIEW CONTROLLER
- (nuevaBusquedaViewController *)getOrCreateNuevaBusqueda
{
    if(!NuevaBusquedaViewController)
        NuevaBusquedaViewController = [[nuevaBusquedaViewController alloc] init];
    return NuevaBusquedaViewController;
}

- (void)showOptionNuevaBusqueda
{
    
    self.titleFLD.text = @"Welcome!";
    
    nuevaBusquedaViewController *controller = [self getOrCreateNuevaBusqueda];
    
    [self showViewController:controller];
}
- (loginViewController *)getOrCreateLogin
{
    if(!LoginViewController)
        LoginViewController = [[loginViewController alloc] init];
    return LoginViewController;
}

- (void)showOptionLogin
{
    self.titleFLD.text = @"Login";

    loginViewController *controller = [self getOrCreateLogin];
    
    [self showViewController:controller];
}

- (favoritosViewController *)getOrCreateFavoritos
{
    if(!FavoritosViewController)
        FavoritosViewController = [[favoritosViewController alloc] init];
    return FavoritosViewController;
}

- (void)showOptionFavoritos
{
    self.titleFLD.text = @"Favoritos";
    
    favoritosViewController *controller = [self getOrCreateFavoritos];
    
    [self showViewController:controller];
}

- (nuevoAnuncioViewController *)getOrCreateNuevoAnuncio
{
    if(!NuevoAnuncioViewController)
        NuevoAnuncioViewController = [[nuevoAnuncioViewController alloc] init];
    return NuevoAnuncioViewController;
}

- (void)showOptionNuevoAnuncio
{
    self.titleFLD.text = @"Nuevo Anuncio";
    
    nuevoAnuncioViewController *controller = [self getOrCreateNuevoAnuncio];
    
    [self showViewController:controller];
}

#pragma mark - SHOW VIEW CONTROLLER
- (void)showViewController:(UIViewController*)viewController
{
    
    [self removeAllOptionViewsBut:viewController.view];
    
    uiNav=[[UINavigationController alloc] initWithRootViewController:viewController];
    uiNav.navigationBarHidden=YES;
    [self removeAllOptionViewsBut:uiNav.view];
    CGRect frame = self.contentsView.frame;
/*    UIDevice *device = [UIDevice currentDevice];
    double OSVersion = [[device systemVersion] intValue];
    
    if (OSVersion < 7.0) {
        frame.origin.y = -15;
        frame.size.height = frame.size.height+15;
    }
    else{
        frame.origin.y = 0;
    }*/
    uiNav.view.frame = frame;
    [self.contentsView addSubview:uiNav.view];
    
}
#pragma mark - REMOVE ALL VIEWS
- (void)removeAllOptionViewsBut:(UIView *)view
{
    for(UIView *childView in self.contentsView.subviews)
        if(view!=childView)
            [childView removeFromSuperview];
}
@end

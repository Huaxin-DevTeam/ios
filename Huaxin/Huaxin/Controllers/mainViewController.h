//
//  mainViewController.h
//  Huaxin
//
//  Created by pep asm on 10/06/14.
//  Copyright (c) 2014 pep. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewController+MMDrawerController.h"
@class nuevaBusquedaViewController;
@class loginViewController;
@class favoritosViewController;
@class nuevoAnuncioViewController;

@interface mainViewController : UIViewController
{
    
    UINavigationController *uiNav;
    nuevaBusquedaViewController *NuevaBusquedaViewController;
    loginViewController *LoginViewController;
    favoritosViewController *FavoritosViewController;
    nuevoAnuncioViewController *NuevoAnuncioViewController;
}

@property (strong, nonatomic) IBOutlet UIView *contentsView;

@property (strong, nonatomic) IBOutlet UILabel *titleFLD;


- (IBAction)menuAction:(id)sender;


- (void)showOptionNuevaBusqueda;
- (void)showOptionLogin;

@end

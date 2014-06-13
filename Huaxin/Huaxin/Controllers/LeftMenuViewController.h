//
//  LeftMenuViewController.h
//  Huaxin
//
//  Created by pep asm on 11/06/14.
//  Copyright (c) 2014 pep. All rights reserved.
//

#import <UIKit/UIKit.h>
@class mainViewController;

@interface LeftMenuViewController : UIViewController
{
    
}
- (IBAction)nuevaBusquedaAction:(id)sender;
- (IBAction)favsAction:(id)sender;
- (IBAction)nuevoAnuncioAction:(id)sender;
- (IBAction)loginAction:(id)sender;


@property (strong, nonatomic) IBOutlet UIButton *nuevaBusqueda;
@property (strong, nonatomic) IBOutlet UIButton *favoritos;
@property (strong, nonatomic) IBOutlet UIButton *nuevoAnuncio;
@property (strong, nonatomic) IBOutlet UIButton *login;



@end

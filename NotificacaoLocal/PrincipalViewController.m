//
//  PrincipalViewController.m
//  NotificacaoLocal
//
//  Created by Rafael Brigagão Paulino on 17/09/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import "PrincipalViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController


-(IBAction)agendarNotificacaoClicado:(id)sender
{
    //criando uma notificacao local
    UILocalNotification *avisoLocal = [[UILocalNotification alloc] init];
    
    NSDate *dataDisparo = [NSDate dateWithTimeIntervalSinceNow:10];
    //configurando a notificacao
    avisoLocal.fireDate = dataDisparo;
    
    avisoLocal.alertBody = @"Notificação do app!";
    
    //exibe uma imagem antes do app iniciar
    avisoLocal.alertLaunchImage = @"wallpaper0.jpg";
    
    avisoLocal.userInfo = [NSDictionary dictionaryWithObjectsAndKeys:@"info1",nil];
    
    //agendando uma notificacao local no ios
    [[UIApplication sharedApplication] scheduleLocalNotification:avisoLocal];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

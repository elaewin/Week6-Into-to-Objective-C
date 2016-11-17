//
//  ViewController.m
//  Week6Day2Lab
//
//  Created by Erica Winberry on 11/15/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // In ViewController.m, inside viewDidLoad, create 5 unique instances of User and use a NSMutableDictionary to store them with their email as the key for the dictionary.
    //  Remember to manually manage your memory for this.
    
    NSMutableDictionary *userDictionary = [[NSMutableDictionary alloc]init];
    
    User *shepherd = [[User alloc]initWithName:@"Shepherd" withEmail:@"n7@spectre.citadel.gov" withAge:@28];
    [userDictionary setValue:shepherd forKey:[shepherd email]];
    
    User *vakarian = [[User alloc]initWithName:@"Garrus" withEmail:@"bettershotthanyou@hierarchy.net" withAge:@42];
    [userDictionary setValue:vakarian forKey:[vakarian email]];

    User *vasNormandy = [[User alloc]initWithName:@"Tali" withEmail:@"admiral.tali@normandy.alliance.gov" withAge:@25];
    [userDictionary setValue:vasNormandy forKey:[vasNormandy email]];
    
    User *tSoni = [[User alloc]initWithName:@"Liara" withEmail:@"archaeologist@sb.com" withAge:@95];
    [userDictionary setValue:tSoni forKey:[tSoni email]];
    
    User *morreau = [[User alloc]initWithName:@"Jeff" withEmail:@"joker@normandy.alliance.gov" withAge:@34];
    [userDictionary setValue:morreau forKey:[morreau email]];
    
    [shepherd release];
    [vakarian release];
    [vasNormandy release];
    [tSoni release];
    [morreau release];
    
    [userDictionary release];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

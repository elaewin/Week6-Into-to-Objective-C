//
//  ViewController.m
//  ClassRoster
//
//  Created by Erica Winberry on 11/16/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "ViewController.h"
#import "StudentStore.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *allStudents = [[StudentStore shared] allStudents];
    
    NSLog(@"Array of Students: %@", allStudents);
    
    //CREATE A NEW STUDENT TO SAVE
    Student *newStudent = [[Student alloc]initWithFirstName:@"Adam" lastName:@"Wallraff" email:@"adam@someotheraddress.com"];
    
    [[StudentStore shared] add:newStudent];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

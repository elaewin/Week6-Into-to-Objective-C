//
//  ViewController.m
//  Week6Labs
//
//  Created by Erica Winberry on 11/14/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "ViewController.h"
#import "PersonSimpleProtocol.h"
#import "Person.h"

@interface ViewController ()<PersonSimpleProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *somebody = [[Person alloc]init];
    
    NSArray *names = @[@"Carol", @"Wanda", @"Jennifer", @"Natasha", @"Jessica", @"Kumala"];

    [somebody printNamesInArray: names];
    
    [self hadABirthday];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)hadABirthday{
    NSLog(@"Birthday magic happens here.");
}


@end

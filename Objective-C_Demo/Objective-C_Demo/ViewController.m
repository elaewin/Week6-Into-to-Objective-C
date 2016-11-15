//
//  ViewController.m
//  Objective-C_Demo
//
//  Created by Erica Winberry on 11/14/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerDataSource.h"
#import "Person.h"

// this is a global variable
int gMoveNumber = 10;

// This is considered a class extension in ObjC - it is a private class interface with properties, methods, etc. available in THIS implementation file.
@interface ViewController ()<ViewControllerDataSource>

@end

@implementation ViewController

// have to specify that is returns void
- (void)viewDidLoad {
    //call super's version of viewDidLoad
    [super viewDidLoad];

    //accessing a global variable
    NSLog(@"VC: %i", gMoveNumber);
    
    
    //create a new Person instance
    Person *testSubject = [[Person alloc] init];
    
    //assign name of testSubject (with string literal)
    [testSubject setName:@"Subject Zero"];
    
    NSString *name = [testSubject name];
    
    //
    NSLog(@"Person: %@ - Name: %@", testSubject, name);
    
    // calling an instance method
    [testSubject walk];

    // calling a class method - note UC initial letter! - same syntax for Type method
    [Person sayHello];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)numberOfCellsForTableView{
    // required method from the ViewControllerDataSource protocol
}

@end

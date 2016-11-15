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

    // MARK: Day 2 Demos
    
    NSNumber *number1 = @123;
    NSNumber *number2 = @321;
    
    // NSNumber has its own method of comparison, so use THAT method - and use the one that's specific to THAT data type.
    if([number1 isEqualToNumber: number2]) {
        NSLog(@"First number is bigger!");
    }

    // using compare method that comes with NSNumber.
    switch ([number1 compare: number2]) {
        case NSOrderedSame:
            NSLog(@"Values are equal");
            break;
        case NSOrderedAscending:
            NSLog(@"Values are ascending.");
            break;
        case NSOrderedDescending:
            NSLog(@"Values are descending.");
            break;
        default:
            break;
    }
    
    // Showing that string formatter knows how to display the string version of an object -- gives the type and the memory address for that particular instance.
    ViewController *myVC = [[ViewController alloc]init];
    
    NSString *vcString = [NSString stringWithFormat: @"VC string: %@", myVC];
    NSLog(@"%@", vcString);
    
    // More string demo:
    
    NSString *string = [NSString stringWithFormat: @"%@, %@", number1, number2];
    
    // This is creating a new NSString and assigning it to the reference 'string' - these are still immutable strings.
    string = @"This is a new string...";
    
    // Mutable strings
    
    NSMutableString *mutableString = [NSMutableString stringWithFormat: @"%@, %@", number1, number2];
    
    [mutableString appendString: @" plus another addition, because mutable!"];
    
    NSLog(@"%@", mutableString);
    
    
    // Type changing problems!
    
    NSString *stringy = @"This is a string with class";
    
    NSLog(@"%@, %@", stringy, stringy.class);
    
    stringy = [NSMutableString stringWithFormat:@"%@", stringy];
    
    NSLog(@"%@ that is now %@", stringy, stringy.class);
    
    // but can't access mutable methods on stringy!
    // (test this here with append method!)
    
    // In order to cast the type as mutable from immutable and get autocomplete access to the methods for the immutable type (convince the compiler that the methods are available), have to actually do something to change the string that is now mutable! This will also only work one statment at a time. Eg. it is only cast as mutable for the purpose of one statment, according to what the compiler knows.
    [(NSMutableString *)stringy appendFormat:@" (but after recasting the type, the mutable string methods will autocomplete.)"];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)numberOfCellsForTableView{
    // required method from the ViewControllerDataSource protocol
}

@end

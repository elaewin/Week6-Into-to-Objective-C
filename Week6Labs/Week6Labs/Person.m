//
//  Person.m
//  Week6Labs
//
//  Created by Erica Winberry on 11/14/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "Person.h"

@implementation Person

NSString *_name;
NSInteger *_age;

// getters
-(NSString *)name{
    return _name;
}

-(NSInteger *)age{
    return _age;
}

// setters
-(void)setName:(NSString *)name{
    _name = name;
}

-(void)setAge:(NSInteger *)age{
    _age = age;
}

//Create a function that takes in an NSArray of People and using a for-loop, prints their names to the console.
-(void)printNamesInArray:(NSArray *)array{
    int n;
    for (n = 0; n < array.count; n += 1) {
        NSLog(@"%@", [array objectAtIndex: n]);
    }
}

@end

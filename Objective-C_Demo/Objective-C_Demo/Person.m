//
//  Person.m
//  Objective-C_Demo
//
//  Created by Erica Winberry on 11/14/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import "Person.h"

@implementation Person

    NSString *_name;
    int _age;

//accessor methods
-(NSString *)name{
    return _name;
}

-(void)setName:(NSString *)name{
    _name = name;
}

-(int)age{
    return _age;
}

-(void)setAge:(int)age{
    _age = age;
}


// CAVEAT! Optionals NO LONGER EXIST - everything is optional! So if something is nil, you just get back nil. So if this was called before the name was assigned, we'd get a return of nil.
-(void)walk{
    NSLog(@"%@ is walking...", _name);
//    or can access the name this way:
//    NSLog(@"%@ is walking", [self name]);
}

+(void)sayHello{
    NSLog(@"Hello!");
}


@end

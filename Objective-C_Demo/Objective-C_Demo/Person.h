//
//  Person.h
//  Objective-C_Demo
//
//  Created by Erica Winberry on 11/14/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

// expose methods from the implementation:

// accessor methods
-(NSString *)name;
-(void)setName:(NSString *)name;
-(int)age;
-(void)setAge:(int)age;

// instance methods
-(void)walk;

// class methods
+(void)sayHello;

@end

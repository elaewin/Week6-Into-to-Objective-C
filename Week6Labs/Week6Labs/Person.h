//
//  Person.h
//  Week6Labs
//
//  Created by Erica Winberry on 11/14/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

// accessor methods
-(NSString *)name;
-(NSInteger *)age;
-(void)setName:(NSString *)name;
-(void)setAge:(NSInteger *)age;
-(void)printNamesInArray:(NSArray *)array;

// instance methods

@end

//
//  User.h
//  Week6Day2Lab
//
//  Created by Erica Winberry on 11/15/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

{
    NSString *_name;
    NSString *_email;
    NSNumber *_age;
}

// Init
-(instancetype) initWithName:(NSString *)userName withEmail:(NSString *)userEmail withAge:(NSNumber *)userAge;

// Accessor Methods
-(void)setName: (NSString *)name;
-(void)setEmail: (NSString *)email;
-(void)setAge: (NSNumber *)age;
-(NSString *)name;
-(NSString *)email;
-(NSNumber *)age;

// Other Methods
-(NSString *)description;


@end
